package androidx.recyclerview.widget;

import androidx.recyclerview.widget.AdapterHelper;
import java.util.List;
/* loaded from: classes2.dex */
class OpReorderer {

    /* renamed from: a  reason: collision with root package name */
    final Callback f7065a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public interface Callback {
        AdapterHelper.UpdateOp obtainUpdateOp(int i2, int i4, int i5, Object obj);

        void recycleUpdateOp(AdapterHelper.UpdateOp updateOp);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public OpReorderer(Callback callback) {
        this.f7065a = callback;
    }

    private int a(List<AdapterHelper.UpdateOp> list) {
        boolean z3 = false;
        for (int size = list.size() - 1; size >= 0; size--) {
            if (list.get(size).f6709a != 8) {
                z3 = true;
            } else if (z3) {
                return size;
            }
        }
        return -1;
    }

    private void c(List<AdapterHelper.UpdateOp> list, int i2, AdapterHelper.UpdateOp updateOp, int i4, AdapterHelper.UpdateOp updateOp2) {
        int i5 = updateOp.f6712d;
        int i6 = updateOp2.f6710b;
        int i7 = i5 < i6 ? -1 : 0;
        int i8 = updateOp.f6710b;
        if (i8 < i6) {
            i7++;
        }
        if (i6 <= i8) {
            updateOp.f6710b = i8 + updateOp2.f6712d;
        }
        int i9 = updateOp2.f6710b;
        if (i9 <= i5) {
            updateOp.f6712d = i5 + updateOp2.f6712d;
        }
        updateOp2.f6710b = i9 + i7;
        list.set(i2, updateOp2);
        list.set(i4, updateOp);
    }

    private void d(List<AdapterHelper.UpdateOp> list, int i2, int i4) {
        AdapterHelper.UpdateOp updateOp = list.get(i2);
        AdapterHelper.UpdateOp updateOp2 = list.get(i4);
        int i5 = updateOp2.f6709a;
        if (i5 == 1) {
            c(list, i2, updateOp, i4, updateOp2);
        } else if (i5 == 2) {
            e(list, i2, updateOp, i4, updateOp2);
        } else if (i5 != 4) {
        } else {
            f(list, i2, updateOp, i4, updateOp2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(List<AdapterHelper.UpdateOp> list) {
        while (true) {
            int a4 = a(list);
            if (a4 == -1) {
                return;
            }
            d(list, a4, a4 + 1);
        }
    }

    void e(List<AdapterHelper.UpdateOp> list, int i2, AdapterHelper.UpdateOp updateOp, int i4, AdapterHelper.UpdateOp updateOp2) {
        boolean z3;
        int i5 = updateOp.f6710b;
        int i6 = updateOp.f6712d;
        boolean z4 = false;
        if (i5 < i6) {
            if (updateOp2.f6710b == i5 && updateOp2.f6712d == i6 - i5) {
                z3 = false;
                z4 = true;
            } else {
                z3 = false;
            }
        } else if (updateOp2.f6710b == i6 + 1 && updateOp2.f6712d == i5 - i6) {
            z3 = true;
            z4 = true;
        } else {
            z3 = true;
        }
        int i7 = updateOp2.f6710b;
        if (i6 < i7) {
            updateOp2.f6710b = i7 - 1;
        } else {
            int i8 = updateOp2.f6712d;
            if (i6 < i7 + i8) {
                updateOp2.f6712d = i8 - 1;
                updateOp.f6709a = 2;
                updateOp.f6712d = 1;
                if (updateOp2.f6712d == 0) {
                    list.remove(i4);
                    this.f7065a.recycleUpdateOp(updateOp2);
                    return;
                }
                return;
            }
        }
        int i9 = updateOp.f6710b;
        int i10 = updateOp2.f6710b;
        AdapterHelper.UpdateOp updateOp3 = null;
        if (i9 <= i10) {
            updateOp2.f6710b = i10 + 1;
        } else {
            int i11 = updateOp2.f6712d;
            if (i9 < i10 + i11) {
                updateOp3 = this.f7065a.obtainUpdateOp(2, i9 + 1, (i10 + i11) - i9, null);
                updateOp2.f6712d = updateOp.f6710b - updateOp2.f6710b;
            }
        }
        if (z4) {
            list.set(i2, updateOp2);
            list.remove(i4);
            this.f7065a.recycleUpdateOp(updateOp);
            return;
        }
        if (z3) {
            if (updateOp3 != null) {
                int i12 = updateOp.f6710b;
                if (i12 > updateOp3.f6710b) {
                    updateOp.f6710b = i12 - updateOp3.f6712d;
                }
                int i13 = updateOp.f6712d;
                if (i13 > updateOp3.f6710b) {
                    updateOp.f6712d = i13 - updateOp3.f6712d;
                }
            }
            int i14 = updateOp.f6710b;
            if (i14 > updateOp2.f6710b) {
                updateOp.f6710b = i14 - updateOp2.f6712d;
            }
            int i15 = updateOp.f6712d;
            if (i15 > updateOp2.f6710b) {
                updateOp.f6712d = i15 - updateOp2.f6712d;
            }
        } else {
            if (updateOp3 != null) {
                int i16 = updateOp.f6710b;
                if (i16 >= updateOp3.f6710b) {
                    updateOp.f6710b = i16 - updateOp3.f6712d;
                }
                int i17 = updateOp.f6712d;
                if (i17 >= updateOp3.f6710b) {
                    updateOp.f6712d = i17 - updateOp3.f6712d;
                }
            }
            int i18 = updateOp.f6710b;
            if (i18 >= updateOp2.f6710b) {
                updateOp.f6710b = i18 - updateOp2.f6712d;
            }
            int i19 = updateOp.f6712d;
            if (i19 >= updateOp2.f6710b) {
                updateOp.f6712d = i19 - updateOp2.f6712d;
            }
        }
        list.set(i2, updateOp2);
        if (updateOp.f6710b != updateOp.f6712d) {
            list.set(i4, updateOp);
        } else {
            list.remove(i4);
        }
        if (updateOp3 != null) {
            list.add(i2, updateOp3);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void f(java.util.List<androidx.recyclerview.widget.AdapterHelper.UpdateOp> r9, int r10, androidx.recyclerview.widget.AdapterHelper.UpdateOp r11, int r12, androidx.recyclerview.widget.AdapterHelper.UpdateOp r13) {
        /*
            r8 = this;
            int r0 = r11.f6712d
            int r1 = r13.f6710b
            r2 = 4
            r3 = 0
            r4 = 1
            if (r0 >= r1) goto Ld
            int r1 = r1 - r4
            r13.f6710b = r1
            goto L20
        Ld:
            int r5 = r13.f6712d
            int r1 = r1 + r5
            if (r0 >= r1) goto L20
            int r5 = r5 - r4
            r13.f6712d = r5
            androidx.recyclerview.widget.OpReorderer$Callback r0 = r8.f7065a
            int r1 = r11.f6710b
            java.lang.Object r5 = r13.f6711c
            androidx.recyclerview.widget.AdapterHelper$UpdateOp r0 = r0.obtainUpdateOp(r2, r1, r4, r5)
            goto L21
        L20:
            r0 = r3
        L21:
            int r1 = r11.f6710b
            int r5 = r13.f6710b
            if (r1 > r5) goto L2b
            int r5 = r5 + r4
            r13.f6710b = r5
            goto L41
        L2b:
            int r6 = r13.f6712d
            int r7 = r5 + r6
            if (r1 >= r7) goto L41
            int r5 = r5 + r6
            int r5 = r5 - r1
            androidx.recyclerview.widget.OpReorderer$Callback r3 = r8.f7065a
            int r1 = r1 + r4
            java.lang.Object r4 = r13.f6711c
            androidx.recyclerview.widget.AdapterHelper$UpdateOp r3 = r3.obtainUpdateOp(r2, r1, r5, r4)
            int r1 = r13.f6712d
            int r1 = r1 - r5
            r13.f6712d = r1
        L41:
            r9.set(r12, r11)
            int r11 = r13.f6712d
            if (r11 <= 0) goto L4c
            r9.set(r10, r13)
            goto L54
        L4c:
            r9.remove(r10)
            androidx.recyclerview.widget.OpReorderer$Callback r11 = r8.f7065a
            r11.recycleUpdateOp(r13)
        L54:
            if (r0 == 0) goto L59
            r9.add(r10, r0)
        L59:
            if (r3 == 0) goto L5e
            r9.add(r10, r3)
        L5e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.OpReorderer.f(java.util.List, int, androidx.recyclerview.widget.AdapterHelper$UpdateOp, int, androidx.recyclerview.widget.AdapterHelper$UpdateOp):void");
    }
}
