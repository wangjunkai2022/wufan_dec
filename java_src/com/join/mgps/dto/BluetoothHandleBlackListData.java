package com.join.mgps.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.List;
/* loaded from: classes.dex */
public class BluetoothHandleBlackListData {
    private List<DataInfo> data_info;
    private String error_code;
    private String error_msg;
    @JsonProperty
    private boolean is_success;
    private AccountBean user_info;

    /* loaded from: classes.dex */
    public static class DataInfo {
        @JsonProperty
        private String id;
        private String model_number;

        public String getId() {
            return this.id;
        }

        public String getModel_number() {
            return this.model_number;
        }

        public void setId(String str) {
            this.id = str;
        }

        public void setModel_number(String str) {
            this.model_number = str;
        }
    }

    public List<DataInfo> getData_info() {
        return this.data_info;
    }

    public String getError_code() {
        return this.error_code;
    }

    public String getError_msg() {
        return this.error_msg;
    }

    public AccountBean getUser_info() {
        return this.user_info;
    }

    public boolean is_success() {
        return this.is_success;
    }

    public void setData_info(List<DataInfo> list) {
        this.data_info = list;
    }

    public void setError_code(String str) {
        this.error_code = str;
    }

    public void setError_msg(String str) {
        this.error_msg = str;
    }

    public void setIs_success(boolean z3) {
        this.is_success = z3;
    }

    public void setUser_info(AccountBean accountBean) {
        this.user_info = accountBean;
    }
}
