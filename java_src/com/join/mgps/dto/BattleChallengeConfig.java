package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class BattleChallengeConfig implements Serializable {
    private static final long serialVersionUID = -6172796922543736060L;
    private int[] battleChallengeCopper;
    private int challengeScore;
    private int fixChallengeCopper;
    private boolean isBattle;
    private int userCopper;

    public int[] getBattleChallengeCopper() {
        return this.battleChallengeCopper;
    }

    public int getChallengeScore() {
        return this.challengeScore;
    }

    public int getFixChallengeCopper() {
        return this.fixChallengeCopper;
    }

    public boolean getIsBattle() {
        return this.isBattle;
    }

    public int getUserCopper() {
        return this.userCopper;
    }

    public void setBattleChallengeCopper(int[] iArr) {
        this.battleChallengeCopper = iArr;
    }

    public void setChallengeScore(int i2) {
        this.challengeScore = i2;
    }

    public void setFixChallengeCopper(int i2) {
        this.fixChallengeCopper = i2;
    }

    public void setIsBattle(boolean z3) {
        this.isBattle = z3;
    }

    public void setUserCopper(int i2) {
        this.userCopper = i2;
    }
}
