package com.example.threaded7ws;


public class Customer {

    private String customerId, agentId, custFirstName, custLastName, custAddress, custCity, custProv, custPostal, custCountry,
            custHomePhone, custBusPhone, custEmail;

    public Customer(String customerId, String custFirstName, String custLastName, String custAddress,
                    String custCity, String custProv, String custPostal, String custCountry, String custHomePhone,
                    String custBusPhone, String custEmail, String agentId) {
        this.customerId = customerId;
        this.agentId = agentId;
        this.custFirstName = custFirstName;
        this.custLastName = custLastName;
        this.custAddress = custAddress;
        this.custCity = custCity;
        this.custProv = custProv;
        this.custPostal = custPostal;
        this.custCountry = custCountry;
        this.custHomePhone = custHomePhone;
        this.custBusPhone = custBusPhone;
        this.custEmail = custEmail;
    }

    public String getCustomerId() {
        return customerId;
    }

    public void setCustomerId(String id) {
        this.customerId = id;
    }

    public String getCustFirstName() {
        return custFirstName;
    }

    public void setCustFirstName(String custFirstName) {
        this.custFirstName = custFirstName;
    }

    public String getCustLastName() {
        return custLastName;
    }

    public void setCustLastName(String custLastName) {
        this.custLastName = custLastName;
    }

    public String getCustAddress() {
        return custAddress;
    }

    public void setCustAddress(String custAddress) {
        this.custAddress = custAddress;
    }

    public String getCustCity() {
        return custCity;
    }

    public void setCustCity(String custCity) {
        this.custCity = custCity;
    }

    public String getCustProv() {
        return custProv;
    }

    public void setCustProv(String custProv) {
        this.custProv = custProv;
    }

    public String getCustPostal() {
        return custPostal;
    }

    public void setCustPostal(String custPostal) {
        this.custPostal = custPostal;
    }

    public String getCustCountry() {
        return custCountry;
    }

    public void setCustCountry(String custCountry) {
        this.custCountry = custCountry;
    }

    public String getCustHomePhone() {
        return custHomePhone;
    }

    public void setCustHomePhone(String custHomePhone) {
        this.custHomePhone = custHomePhone;
    }

    public String getCustBusPhone() {
        return custBusPhone;
    }

    public void setCustBusPhone(String custBusPhone) {
        this.custBusPhone = custBusPhone;
    }

    public String getCustEmail() {
        return custEmail;
    }

    public void setCustEmail(String custEmail) {
        this.custEmail = custEmail;
    }

    public String getAgentId() {
        return agentId;
    }

    public void setAgentId(String agentId) {
        this.agentId = agentId;
    }
}