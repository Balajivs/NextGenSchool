package com.airwire.nextgenschool.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.airwire.nextgenschool.dto.MiscellaneousMstDto;
import com.airwire.nextgenschool.model.MiscellaneousMst;
import com.airwire.nextgenschool.repository.MiscellaneousMstRepository;
import com.airwire.nextgenschool.service.MiscellaneousMstService;

/**
 * The Class MiscellaneousMstServiceImpl.
 *
 * @author Balaji Sambhale
 * @date 04/04/2021
 * The Class MiscellaneousMstServiceImpl
 */
@Service
public class MiscellaneousMstServiceImpl implements MiscellaneousMstService{

	/** The miscellaneous mst repository. */
	@Autowired
	private MiscellaneousMstRepository miscellaneousMstRepository;
	
	
	
	@Override
	public void createMiscellaneousMst(MiscellaneousMstDto miscellaneousMstDto) throws Exception {

		if (miscellaneousMstDto != null) {

			MiscellaneousMst miscellaneousMst = new MiscellaneousMst();
			miscellaneousMst.setDescription(miscellaneousMstDto.getDescription());
			miscellaneousMst.setCode(miscellaneousMstDto.getCode());
			miscellaneousMst.setActive(true);
			miscellaneousMstRepository.save(miscellaneousMst);

		} else {
			throw new Exception("Does not found Miscellaneous Master");
		}
	}


	
	@Override
	public MiscellaneousMstDto getMiscellaneousMasterById(Long id) throws Exception {

		MiscellaneousMst miscellaneousMst = miscellaneousMstRepository.getMiscellaneousMasterById(id, true);
		MiscellaneousMstDto miscellaneousMstDto = new MiscellaneousMstDto();
		miscellaneousMstDto.setId(miscellaneousMst.getId());
		miscellaneousMstDto.setCode(miscellaneousMst.getCode());
		miscellaneousMstDto.setDescription(miscellaneousMst.getDescription());
		miscellaneousMstDto.setActive(miscellaneousMst.getActive());
		return miscellaneousMstDto;
	}


	
	@Override
	public void updateMiscellaneousMaster(MiscellaneousMstDto miscellaneousMstDto) throws Exception {

		if (miscellaneousMstDto.getId() >= 0) {
			MiscellaneousMst miscellaneousMst = miscellaneousMstRepository
					.getMiscellaneousMasterById(miscellaneousMstDto.getId(), true);
			miscellaneousMst.setDescription(miscellaneousMstDto.getDescription());
			miscellaneousMst.setCode(miscellaneousMstDto.getCode());
			miscellaneousMst.setActive(miscellaneousMstDto.getActive());
			miscellaneousMstRepository.save(miscellaneousMst);
		} else {

			throw new Exception("Record has not found");
		}

	}
	
	
	@Override
	public void activeDeactiveMiscellaneousMst(MiscellaneousMstDto miscellaneousMstDto) throws Exception {
		if (miscellaneousMstDto != null) {
			
			if (miscellaneousMstDto.getId() >= 0) {
				MiscellaneousMst miscellaneousMst = miscellaneousMstRepository.getMiscellaneousMasterById(miscellaneousMstDto.getId(), true);
				miscellaneousMst.setActive(miscellaneousMstDto.getActive());
				miscellaneousMstRepository.save(miscellaneousMst);
			} else {
				throw new Exception("Record has not updated");
			}

		}

	}
	
}
