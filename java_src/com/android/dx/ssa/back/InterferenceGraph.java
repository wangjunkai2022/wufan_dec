package com.android.dx.ssa.back;

import com.android.dx.ssa.SetFactory;
import com.android.dx.util.IntSet;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class InterferenceGraph {
    private final ArrayList<IntSet> interference;

    public InterferenceGraph(int i2) {
        this.interference = new ArrayList<>(i2);
        for (int i4 = 0; i4 < i2; i4++) {
            this.interference.add(SetFactory.makeInterferenceSet(i2));
        }
    }

    private void ensureCapacity(int i2) {
        this.interference.ensureCapacity(i2);
        for (int size = this.interference.size(); size < i2; size++) {
            this.interference.add(SetFactory.makeInterferenceSet(i2));
        }
    }

    public void add(int i2, int i4) {
        ensureCapacity(Math.max(i2, i4) + 1);
        this.interference.get(i2).add(i4);
        this.interference.get(i4).add(i2);
    }

    public void dumpToStdout() {
        int size = this.interference.size();
        for (int i2 = 0; i2 < size; i2++) {
            StringBuilder sb = new StringBuilder();
            sb.append("Reg " + i2 + ":" + this.interference.get(i2).toString());
            System.out.println(sb.toString());
        }
    }

    public void mergeInterferenceSet(int i2, IntSet intSet) {
        if (i2 < this.interference.size()) {
            intSet.merge(this.interference.get(i2));
        }
    }
}
