package com.papa91.arc.bean;

import java.util.List;
/* loaded from: classes4.dex */
public class SkillTableDataBean {
    private int cha_addr_1p;
    private int cha_addr_2p;
    private int cha_addr_3p;
    private int cha_addr_4p;
    private int dir_addr_1p;
    private int dir_addr_2p;
    private int dir_addr_3p;
    private int dir_addr_4p;
    private int dir_type;
    private int dir_value_1p;
    private int dir_value_2p;
    private int dir_value_3p;
    private int dir_value_4p;
    private int press;
    private List<SkillsTableBean> skills_table;
    private int step;
    private int type;

    /* loaded from: classes4.dex */
    public static class SkillsTableBean {
        private String alias;
        private int cha_value;
        private int mount;
        private String name;
        private List<SkillBean> skill;

        /* loaded from: classes4.dex */
        public static class SkillBean {
            private int _Index;
            private String skill_key;
            private String skill_name;
            private String skill_noSP;
            private String skill_set;
            private String skill_type;

            public String getSkill_key() {
                return this.skill_key;
            }

            public String getSkill_name() {
                return this.skill_name;
            }

            public String getSkill_noSP() {
                return this.skill_noSP;
            }

            public String getSkill_set() {
                return this.skill_set;
            }

            public String getSkill_type() {
                return this.skill_type;
            }

            public int get_Index() {
                return this._Index;
            }

            public void setSkill_key(String str) {
                this.skill_key = str;
            }

            public void setSkill_name(String str) {
                this.skill_name = str;
            }

            public void setSkill_noSP(String str) {
                this.skill_noSP = str;
            }

            public void setSkill_set(String str) {
                this.skill_set = str;
            }

            public void setSkill_type(String str) {
                this.skill_type = str;
            }

            public void set_Index(int i2) {
                this._Index = i2;
            }
        }

        public String getAlias() {
            return this.alias;
        }

        public int getCha_value() {
            return this.cha_value;
        }

        public int getMount() {
            return this.mount;
        }

        public String getName() {
            return this.name;
        }

        public List<SkillBean> getSkill() {
            return this.skill;
        }

        public void setAlias(String str) {
            this.alias = str;
        }

        public void setCha_value(int i2) {
            this.cha_value = i2;
        }

        public void setMount(int i2) {
            this.mount = i2;
        }

        public void setName(String str) {
            this.name = str;
        }

        public void setSkill(List<SkillBean> list) {
            this.skill = list;
        }
    }

    public int getCha_addr_1p() {
        return this.cha_addr_1p;
    }

    public int getCha_addr_2p() {
        return this.cha_addr_2p;
    }

    public int getCha_addr_3p() {
        return this.cha_addr_3p;
    }

    public int getCha_addr_4p() {
        return this.cha_addr_4p;
    }

    public int getDir_addr_1p() {
        return this.dir_addr_1p;
    }

    public int getDir_addr_2p() {
        return this.dir_addr_2p;
    }

    public int getDir_addr_3p() {
        return this.dir_addr_3p;
    }

    public int getDir_addr_4p() {
        return this.dir_addr_4p;
    }

    public int getDir_type() {
        return this.dir_type;
    }

    public int getDir_value_1p() {
        return this.dir_value_1p;
    }

    public int getDir_value_2p() {
        return this.dir_value_2p;
    }

    public int getDir_value_3p() {
        return this.dir_value_3p;
    }

    public int getDir_value_4p() {
        return this.dir_value_4p;
    }

    public int getPress() {
        return this.press;
    }

    public List<SkillsTableBean> getSkills_table() {
        return this.skills_table;
    }

    public int getStep() {
        return this.step;
    }

    public int getType() {
        return this.type;
    }

    public void setCha_addr_1p(int i2) {
        this.cha_addr_1p = i2;
    }

    public void setCha_addr_2p(int i2) {
        this.cha_addr_2p = i2;
    }

    public void setCha_addr_3p(int i2) {
        this.cha_addr_3p = i2;
    }

    public void setCha_addr_4p(int i2) {
        this.cha_addr_4p = i2;
    }

    public void setDir_addr_1p(int i2) {
        this.dir_addr_1p = i2;
    }

    public void setDir_addr_2p(int i2) {
        this.dir_addr_2p = i2;
    }

    public void setDir_addr_3p(int i2) {
        this.dir_addr_3p = i2;
    }

    public void setDir_addr_4p(int i2) {
        this.dir_addr_4p = i2;
    }

    public void setDir_type(int i2) {
        this.dir_type = i2;
    }

    public void setDir_value_1p(int i2) {
        this.dir_value_1p = i2;
    }

    public void setDir_value_2p(int i2) {
        this.dir_value_2p = i2;
    }

    public void setDir_value_3p(int i2) {
        this.dir_value_3p = i2;
    }

    public void setDir_value_4p(int i2) {
        this.dir_value_4p = i2;
    }

    public void setPress(int i2) {
        this.press = i2;
    }

    public void setSkills_table(List<SkillsTableBean> list) {
        this.skills_table = list;
    }

    public void setStep(int i2) {
        this.step = i2;
    }

    public void setType(int i2) {
        this.type = i2;
    }
}
