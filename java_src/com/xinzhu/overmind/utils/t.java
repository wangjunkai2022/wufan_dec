package com.xinzhu.overmind.utils;

import java.util.List;
/* compiled from: ShellUtils.java */
/* loaded from: classes.dex */
public class t {

    /* renamed from: a  reason: collision with root package name */
    public static final String f64782a = "su";

    /* renamed from: b  reason: collision with root package name */
    public static final String f64783b = "sh";

    /* renamed from: c  reason: collision with root package name */
    public static final String f64784c = "exit\n";

    /* renamed from: d  reason: collision with root package name */
    public static final String f64785d = "\n";

    private t() {
        throw new AssertionError();
    }

    public static boolean a() {
        return c("echo root", true, false).f64786a == 0;
    }

    public static a b(String command, boolean isRoot) {
        return g(new String[]{command}, isRoot, true);
    }

    public static a c(String command, boolean isRoot, boolean isNeedResultMsg) {
        return g(new String[]{command}, isRoot, isNeedResultMsg);
    }

    public static a d(List<String> commands, boolean isRoot) {
        return g(commands == null ? null : (String[]) commands.toArray(new String[0]), isRoot, true);
    }

    public static a e(List<String> commands, boolean isRoot, boolean isNeedResultMsg) {
        return g(commands == null ? null : (String[]) commands.toArray(new String[0]), isRoot, isNeedResultMsg);
    }

    public static a f(String[] commands, boolean isRoot) {
        return g(commands, isRoot, true);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(11:(4:6|7|(1:9)(1:127)|10)|(8:12|13|14|15|16|(4:19|(2:21|22)(2:24|25)|23|17)|26|27)|(12:44|45|46|47|(3:49|50|(1:52)(0))|31|(1:33)|35|36|(1:38)|39|40)(1:29)|30|31|(0)|35|36|(0)|39|40) */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00b8, code lost:
        r10 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00b9, code lost:
        r10.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x00ff, code lost:
        if (r10 != null) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x011c, code lost:
        if (r10 != 0) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x011e, code lost:
        r10.destroy();
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0121, code lost:
        r8 = r9;
        r1 = r2;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x00f0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:129:0x010d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00b4 A[Catch: IOException -> 0x00b8, TRY_LEAVE, TryCatch #3 {IOException -> 0x00b8, blocks: (B:47:0x00af, B:49:0x00b4), top: B:125:0x00af }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x00f8 A[Catch: IOException -> 0x00f4, TRY_LEAVE, TryCatch #5 {IOException -> 0x00f4, blocks: (B:75:0x00f0, B:79:0x00f8), top: B:127:0x00f0 }] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0115 A[Catch: IOException -> 0x0111, TRY_LEAVE, TryCatch #7 {IOException -> 0x0111, blocks: (B:90:0x010d, B:94:0x0115), top: B:129:0x010d }] */
    /* JADX WARN: Type inference failed for: r10v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v13 */
    /* JADX WARN: Type inference failed for: r10v14, types: [java.lang.Process] */
    /* JADX WARN: Type inference failed for: r10v15 */
    /* JADX WARN: Type inference failed for: r10v24 */
    /* JADX WARN: Type inference failed for: r10v28 */
    /* JADX WARN: Type inference failed for: r10v33 */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v11, types: [int] */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v16, types: [int] */
    /* JADX WARN: Type inference failed for: r1v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.xinzhu.overmind.utils.t.a g(java.lang.String[] r8, boolean r9, boolean r10) {
        /*
            Method dump skipped, instructions count: 337
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xinzhu.overmind.utils.t.g(java.lang.String[], boolean, boolean):com.xinzhu.overmind.utils.t$a");
    }

    /* compiled from: ShellUtils.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public int f64786a;

        /* renamed from: b  reason: collision with root package name */
        public String f64787b;

        public a(int result) {
            this.f64786a = result;
        }

        public a(int result, String successMsg) {
            this.f64786a = result;
            this.f64787b = successMsg;
        }
    }
}
