package com.project.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.CatalogFileVO;
import com.project.model.CatalogVO;
import com.project.model.EventTypeVO;
import com.project.service.CatalogService;
import com.project.service.EventTypeService;

@Controller
public class CatalogController {

	@Autowired
	private EventTypeService eventtypeservice;

	@Autowired
	private CatalogService catalogservice;

	@GetMapping(value = "admin/addCatalog")
	public ModelAndView addCatalog() {
		List<EventTypeVO> eventTypeList = this.eventtypeservice.GetEventType();
		return new ModelAndView("admin/addCatalog", "CatalogVO", new CatalogVO())
				.addObject("eventTypeList", eventTypeList).addObject("type", "Add").addObject("button", "Save");
	}

	@GetMapping(value = "admin/viewCatalog")
	public ModelAndView viewEvent() {
		List<CatalogVO> catalogList = this.catalogservice.getCatalog();
		List<CatalogFileVO> catalogFileList = this.catalogservice.getCatalogFile();
		return new ModelAndView("admin/viewCatalog", "catalogList", catalogList).addObject("catalogFileList",
				catalogFileList);
	}

	@PostMapping(value = "admin/saveCatalog")
	public ModelAndView saveCatalog(@ModelAttribute CatalogVO catalogVO, @RequestParam("file") List<MultipartFile> file,@RequestParam("file1") List<MultipartFile> file1,
			HttpServletRequest request, @RequestParam(required = false) String isRemoveAll) {

		this.catalogservice.saveCatalog(catalogVO);

		if (isRemoveAll != null && !isRemoveAll.isEmpty() && isRemoveAll.equalsIgnoreCase("true")) {

			if (catalogVO.getId() > 0) {

				List<CatalogFileVO> catalogFileList = this.catalogservice.findByCatId(catalogVO.getId());

				System.out.println(catalogFileList.size());

				for (CatalogFileVO catalogFileVO : catalogFileList) {

					String path = request.getSession().getServletContext().getRealPath("/");
					String filePath = path + "documents\\catalog\\" + catalogFileVO.getFileName();

					File f = new File(filePath);
					f.delete();

					System.err.println("delete");

					this.catalogservice.deleteCatalogFile(catalogFileVO);
				}

			}

		}

		if (file != null && !file.isEmpty() && file.size() > 0) {

			for (MultipartFile multipartFile : file) {

				if (multipartFile.getSize() > 0) {

					String path = request.getSession().getServletContext().getRealPath("/");

					String fileName = multipartFile.getOriginalFilename();

					String filePath = path + "documents\\catalog\\";

					try {
						byte barr[] = multipartFile.getBytes();

						BufferedOutputStream bout = new BufferedOutputStream(
								new FileOutputStream(filePath + "/" + fileName));

						bout.write(barr);
						bout.flush();
						bout.close();

					} catch (Exception e) {
						e.printStackTrace();
					}

					CatalogFileVO catalogFileVO = new CatalogFileVO();
					catalogFileVO.setFileName(fileName);
					catalogFileVO.setFilePath(filePath);
					catalogFileVO.setCatalogVO(catalogVO);

					this.catalogservice.saveCatalogFile(catalogFileVO);
				}

			}
		}

		return new ModelAndView("redirect:/admin/viewCatalog");
	}

	@GetMapping(value = "admin/deleteCatalog")
	public ModelAndView deleteCatalog(@ModelAttribute CatalogVO catalogVO, @RequestParam int id,
			@RequestParam int id1) {
		List<CatalogVO> catalogList = this.catalogservice.findById(catalogVO);

		CatalogFileVO catalogfilevo = new CatalogFileVO();
		catalogfilevo.setId(id1);
		catalogfilevo.setStatus(false);
		catalogVO = catalogList.get(0);

		this.catalogservice.deleteCatalogFile(catalogfilevo);
		this.catalogservice.saveCatalog(catalogVO);

		return new ModelAndView("redirect:/admin/viewCatalog");
	}

	@GetMapping(value = "admin/editCatalog")
	public ModelAndView edit(@ModelAttribute CatalogVO catalogVO, @RequestParam int id) {

		List<EventTypeVO> eventTypeList = this.eventtypeservice.GetEventType();

		List<CatalogVO> catalogList = this.catalogservice.findById(catalogVO);

		catalogVO = catalogList.get(0);

		List<CatalogFileVO> catalogFileList = this.catalogservice.findByCatId(id);

		return new ModelAndView("admin/addCatalog", "CatalogVO", catalogVO).addObject("eventTypeList", eventTypeList)
				.addObject("type", "Edit").addObject("button", "Update").addObject("catalogFileList", catalogFileList);
	}
}