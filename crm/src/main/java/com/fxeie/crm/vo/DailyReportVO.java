package com.fxeie.crm.vo;

import java.math.BigDecimal;

public class DailyReportVO {
    private String billDate;

    private BigDecimal inGlod;

    private BigDecimal outGlod;

    private BigDecimal nettedGlod;

    private BigDecimal volume;

    private BigDecimal profit;

    private BigDecimal commision;

    private BigDecimal tax;

    private BigDecimal interest;

    private BigDecimal income;

    public String getBillDate() {
        return billDate;
    }

    public void setBillDate(String billDate) {
        this.billDate = billDate;
    }

    public BigDecimal getInGlod() {
        return inGlod;
    }

    public void setInGlod(BigDecimal inGlod) {
        this.inGlod = inGlod;
    }

    public BigDecimal getOutGlod() {
        return outGlod;
    }

    public void setOutGlod(BigDecimal outGlod) {
        this.outGlod = outGlod;
    }

    public BigDecimal getNettedGlod() {
        return nettedGlod;
    }

    public void setNettedGlod(BigDecimal nettedGlod) {
        this.nettedGlod = nettedGlod;
    }

    public BigDecimal getVolume() {
        return volume;
    }

    public void setVolume(BigDecimal volume) {
        this.volume = volume;
    }

    public BigDecimal getProfit() {
        return profit;
    }

    public void setProfit(BigDecimal profit) {
        this.profit = profit;
    }

    public BigDecimal getCommision() {
        return commision;
    }

    public void setCommision(BigDecimal commision) {
        this.commision = commision;
    }

    public BigDecimal getTax() {
        return tax;
    }

    public void setTax(BigDecimal tax) {
        this.tax = tax;
    }

    public BigDecimal getInterest() {
        return interest;
    }

    public void setInterest(BigDecimal interest) {
        this.interest = interest;
    }

    public BigDecimal getIncome() {
        return income;
    }

    public void setIncome(BigDecimal income) {
        this.income = income;
    }

    @Override
    public String toString() {
        return "DailyReportVO{" +
                "billDate='" + billDate + '\'' +
                ", inGlod=" + inGlod +
                ", outGlod=" + outGlod +
                ", nettedGlod=" + nettedGlod +
                ", volume=" + volume +
                ", profit=" + profit +
                ", commision=" + commision +
                ", tax=" + tax +
                ", interest=" + interest +
                ", income=" + income +
                '}';
    }
}
