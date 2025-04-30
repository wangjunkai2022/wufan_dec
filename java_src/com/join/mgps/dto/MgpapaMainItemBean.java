package com.join.mgps.dto;

import com.join.mgps.business.RecomDatabeanBusiness;
import java.util.List;
/* loaded from: classes4.dex */
public class MgpapaMainItemBean {
    private boolean hasExposure;
    private int moreType;
    private String moreType2;
    private Object object;
    private int page;
    private String reMarks;
    private RecomDatabeanBusiness recomDatabeanLeft;
    private RecomDatabeanBusiness recomDatabeanRight;
    private List<RecomDatabeanBusiness> recomDatabeans;
    private List<RecomDatabeanBusiness> recomDatabeans2;
    private List<RecomDatabeanBusiness> recomDatabeans3;
    private int showtype;

    public MgpapaMainItemBean() {
    }

    public int getMoreType() {
        return this.moreType;
    }

    public String getMoreType2() {
        return this.moreType2;
    }

    public Object getObject() {
        return this.object;
    }

    public int getPage() {
        return this.page;
    }

    public String getReMarks() {
        return this.reMarks;
    }

    public RecomDatabeanBusiness getRecomDatabeanLeft() {
        return this.recomDatabeanLeft;
    }

    public RecomDatabeanBusiness getRecomDatabeanRight() {
        return this.recomDatabeanRight;
    }

    public List<RecomDatabeanBusiness> getRecomDatabeans() {
        return this.recomDatabeans;
    }

    public List<RecomDatabeanBusiness> getRecomDatabeans2() {
        return this.recomDatabeans2;
    }

    public List<RecomDatabeanBusiness> getRecomDatabeans3() {
        return this.recomDatabeans3;
    }

    public int getShowtype() {
        return this.showtype;
    }

    public boolean isHasExposure() {
        return this.hasExposure;
    }

    public void setHasExposure(boolean z3) {
        this.hasExposure = z3;
    }

    public void setMoreType(int i2) {
        this.moreType = i2;
    }

    public void setMoreType2(String str) {
        this.moreType2 = str;
    }

    public void setObject(Object obj) {
        this.object = obj;
    }

    public void setPage(int i2) {
        this.page = i2;
    }

    public void setReMarks(String str) {
        this.reMarks = str;
    }

    public void setRecomDatabeanLeft(RecomDatabeanBusiness recomDatabeanBusiness) {
        this.recomDatabeanLeft = recomDatabeanBusiness;
    }

    public void setRecomDatabeanRight(RecomDatabeanBusiness recomDatabeanBusiness) {
        this.recomDatabeanRight = recomDatabeanBusiness;
    }

    public void setRecomDatabeans(List<RecomDatabeanBusiness> list) {
        this.recomDatabeans = list;
    }

    public void setRecomDatabeans2(List<RecomDatabeanBusiness> list) {
        this.recomDatabeans2 = list;
    }

    public void setRecomDatabeans3(List<RecomDatabeanBusiness> list) {
        this.recomDatabeans3 = list;
    }

    public void setShowtype(int i2) {
        this.showtype = i2;
    }

    public MgpapaMainItemBean(int i2, List<RecomDatabeanBusiness> list) {
        this.showtype = i2;
        this.recomDatabeans = list;
    }

    public MgpapaMainItemBean(int i2, List<RecomDatabeanBusiness> list, List<RecomDatabeanBusiness> list2, List<RecomDatabeanBusiness> list3) {
        this.showtype = i2;
        this.recomDatabeans = list;
        this.recomDatabeans2 = list2;
        this.recomDatabeans3 = list3;
    }
}
