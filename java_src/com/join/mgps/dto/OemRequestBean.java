package com.join.mgps.dto;

import org.springframework.util.LinkedMultiValueMap;
/* loaded from: classes4.dex */
public class OemRequestBean {

    /* loaded from: classes4.dex */
    public static class GetOemDetailRequestBean {
        private String oid;
        private String uid;

        public String getOid() {
            return this.oid;
        }

        public LinkedMultiValueMap<String, Object> getParams() {
            LinkedMultiValueMap<String, Object> linkedMultiValueMap = new LinkedMultiValueMap<>();
            linkedMultiValueMap.add("uid", getUid() + "");
            linkedMultiValueMap.add("oid", getOid() + "");
            return linkedMultiValueMap;
        }

        public String getUid() {
            return this.uid;
        }

        public void setOid(String str) {
            this.oid = str;
        }

        public void setUid(String str) {
            this.uid = str;
        }
    }

    /* loaded from: classes4.dex */
    public static class ReceiveCdkRequestBean {
        private String oid;
        private String uid;

        public String getOid() {
            return this.oid;
        }

        public LinkedMultiValueMap<String, Object> getParams() {
            LinkedMultiValueMap<String, Object> linkedMultiValueMap = new LinkedMultiValueMap<>();
            linkedMultiValueMap.add("uid", getUid() + "");
            linkedMultiValueMap.add("oid", getOid() + "");
            return linkedMultiValueMap;
        }

        public String getUid() {
            return this.uid;
        }

        public void setOid(String str) {
            this.oid = str;
        }

        public void setUid(String str) {
            this.uid = str;
        }
    }
}
