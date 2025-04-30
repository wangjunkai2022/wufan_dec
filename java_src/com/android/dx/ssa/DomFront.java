package com.android.dx.ssa;

import com.android.dx.util.IntSet;
import io.netty.util.internal.StringUtil;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Iterator;
/* loaded from: classes2.dex */
public class DomFront {
    private static final boolean DEBUG = false;
    private final DomInfo[] domInfos;
    private final SsaMethod meth;
    private final ArrayList<SsaBasicBlock> nodes;

    /* loaded from: classes2.dex */
    public static class DomInfo {
        public IntSet dominanceFrontiers;
        public int idom = -1;
    }

    public DomFront(SsaMethod ssaMethod) {
        this.meth = ssaMethod;
        ArrayList<SsaBasicBlock> blocks = ssaMethod.getBlocks();
        this.nodes = blocks;
        int size = blocks.size();
        this.domInfos = new DomInfo[size];
        for (int i2 = 0; i2 < size; i2++) {
            this.domInfos[i2] = new DomInfo();
        }
    }

    private void buildDomTree() {
        int size = this.nodes.size();
        for (int i2 = 0; i2 < size; i2++) {
            int i4 = this.domInfos[i2].idom;
            if (i4 != -1) {
                this.nodes.get(i4).addDomChild(this.nodes.get(i2));
            }
        }
    }

    private void calcDomFronts() {
        int size = this.nodes.size();
        for (int i2 = 0; i2 < size; i2++) {
            DomInfo domInfo = this.domInfos[i2];
            BitSet predecessors = this.nodes.get(i2).getPredecessors();
            if (predecessors.cardinality() > 1) {
                for (int nextSetBit = predecessors.nextSetBit(0); nextSetBit >= 0; nextSetBit = predecessors.nextSetBit(nextSetBit + 1)) {
                    int i4 = nextSetBit;
                    while (i4 != domInfo.idom && i4 != -1) {
                        DomInfo domInfo2 = this.domInfos[i4];
                        if (domInfo2.dominanceFrontiers.has(i2)) {
                            break;
                        }
                        domInfo2.dominanceFrontiers.add(i2);
                        i4 = domInfo2.idom;
                    }
                }
            }
        }
    }

    private void debugPrintDomChildren() {
        int size = this.nodes.size();
        for (int i2 = 0; i2 < size; i2++) {
            SsaBasicBlock ssaBasicBlock = this.nodes.get(i2);
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append('{');
            Iterator<SsaBasicBlock> it2 = ssaBasicBlock.getDomChildren().iterator();
            boolean z3 = false;
            while (it2.hasNext()) {
                SsaBasicBlock next = it2.next();
                if (z3) {
                    stringBuffer.append(StringUtil.COMMA);
                }
                stringBuffer.append(next);
                z3 = true;
            }
            stringBuffer.append('}');
            PrintStream printStream = System.out;
            printStream.println("domChildren[" + ssaBasicBlock + "]: " + ((Object) stringBuffer));
        }
    }

    public DomInfo[] run() {
        int size = this.nodes.size();
        Dominators.make(this.meth, this.domInfos, false);
        buildDomTree();
        for (int i2 = 0; i2 < size; i2++) {
            this.domInfos[i2].dominanceFrontiers = SetFactory.makeDomFrontSet(size);
        }
        calcDomFronts();
        return this.domInfos;
    }
}
