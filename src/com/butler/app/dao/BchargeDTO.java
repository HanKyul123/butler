package com.butler.app.dao;

public class BchargeDTO {
	private int business_place_num_fk;
	private int animal_type;
	private String animal_weight;
	private int one_day_charge;

	public int getBusiness_place_num_fk() {
		return business_place_num_fk;
	}
	public void setBusiness_place_num_fk(int business_place_num_fk) {
		this.business_place_num_fk = business_place_num_fk;
	}
	public int getAnimal_type() {
		return animal_type;
	}
	public void setAnimal_type(int animal_type) {
		this.animal_type = animal_type;
	}
	public String getAnimal_weight() {
		return animal_weight;
	}
	public void setAnimal_weight(String animal_weight) {
		this.animal_weight = animal_weight;
	}
	public int getOne_day_charge() {
		return one_day_charge;
	}
	public void setOne_day_charge(int one_day_charge) {
		this.one_day_charge = one_day_charge;
	}
	
	
	
	
}
