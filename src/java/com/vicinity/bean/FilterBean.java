package com.vicinity.bean;

public class FilterBean {

    private String SortByPrice;
    private String City;
    private String AcNonAcRooms;
    private String rating;

    public String getSortByPrice() {
        return SortByPrice;
    }

    public void setSortByPrice(String SortByPrice) {
        this.SortByPrice = SortByPrice;
    }

    public String getCity() {
        return City;
    }

    public void setCity(String City) {
        this.City = City;
    }

    public String getAcNonAcRooms() {
        return AcNonAcRooms;
    }

    public void setAcNonAcRooms(String AcNonAcRooms) {
        this.AcNonAcRooms = AcNonAcRooms;
    }

    public String getRating() {
        return rating;
    }

    public void setRating(String rating) {
        this.rating = rating;
    }
}
