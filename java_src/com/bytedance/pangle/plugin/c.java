package com.bytedance.pangle.plugin;

import androidx.annotation.NonNull;
import com.bytedance.pangle.ZeusPluginStateListener;
import com.bytedance.pangle.b.b;
import com.bytedance.pangle.g;
import com.bytedance.pangle.log.ZeusLogger;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static final g f10283a = g.a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized boolean a(String str) {
        Plugin plugin = PluginManager.getInstance().getPlugin(str);
        if (plugin == null) {
            ZeusLogger.w(ZeusLogger.TAG_LOAD, "PluginLoader loadPlugin, plugin == null, pkg = ".concat(String.valueOf(str)));
            return false;
        } else if (!plugin.isInstalled()) {
            ZeusLogger.w(ZeusLogger.TAG_LOAD, "PluginLoader loadPlugin, UN_INSTALLED, ".concat(String.valueOf(str)));
            return false;
        } else if (plugin.isLoaded()) {
            return true;
        } else {
            g gVar = f10283a;
            gVar.a(2000, 0, plugin.mPkgName, plugin.getVersion(), null);
            com.bytedance.pangle.log.b a4 = com.bytedance.pangle.log.b.a(ZeusLogger.TAG_LOAD, "PluginLoader", "loadPlugin:".concat(String.valueOf(str)));
            a(com.bytedance.pangle.b.b.f10081g, b.a.f10110z, plugin.mPkgName, plugin.getVersion(), -1L, null);
            ZeusPluginStateListener.postStateChange(str, 8, new Object[0]);
            StringBuilder sb = new StringBuilder();
            boolean a5 = a(str, plugin, sb);
            a4.b("loadPluginInternal:".concat(String.valueOf(a5)));
            if (a5) {
                plugin.setLifeCycle(3);
                a(com.bytedance.pangle.b.b.f10082h, b.a.A, plugin.mPkgName, plugin.getVersion(), a4.a(), sb.toString());
                ZeusPluginStateListener.postStateChange(str, 9, new Object[0]);
                gVar.a(2100, 0, plugin.mPkgName, plugin.getVersion(), null);
            } else {
                sb.append("plugin:");
                sb.append(plugin.mPkgName);
                sb.append(" versionCode:");
                sb.append(plugin.getVersion());
                sb.append("load failed;");
                a(com.bytedance.pangle.b.b.f10082h, b.a.B, plugin.mPkgName, plugin.getVersion(), -1L, sb.toString());
                ZeusPluginStateListener.postStateChange(str, 10, new Object[0]);
                gVar.a(2100, -1, plugin.mPkgName, plugin.getVersion(), null);
            }
            ZeusLogger.i(ZeusLogger.TAG_LOAD, "PluginLoader loadFinished, ".concat(String.valueOf(plugin)));
            if (plugin.isLoaded()) {
                ZeusLogger.d(ZeusLogger.TAG_LOAD, "PluginLoader postResult, LOADED " + plugin.mPkgName);
                return true;
            }
            return false;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(62:25|(1:184)|29|(1:183)|33|(1:35)|36|(1:182)|40|(43:47|48|(2:50|51)(1:180)|52|(1:54)|55|(1:179)|59|(1:178)|63|(1:65)|66|(1:68)|69|(1:177)|73|(1:176)|77|(3:79|(5:81|(3:86|87|88)|89|90|88)|91)|92|(3:94|(5:96|(3:101|102|103)|104|105|103)|106)|107|(1:175)|111|(3:113|(5:115|(3:120|121|122)|123|124|122)|125)|126|(1:174)|130|(3:132|(5:134|(3:139|140|141)|142|143|141)|144)|145|(1:173)|149|(1:153)|154|(1:172)|158|(1:160)|161|(1:171)|165|166|167|168)|181|48|(0)(0)|52|(0)|55|(1:57)|179|59|(1:61)|178|63|(0)|66|(0)|69|(1:71)|177|73|(1:75)|176|77|(0)|92|(0)|107|(1:109)|175|111|(0)|126|(1:128)|174|130|(0)|145|(1:147)|173|149|(2:151|153)|154|(1:156)|172|158|(0)|161|(1:163)|171|165|166|167|168) */
    /* JADX WARN: Removed duplicated region for block: B:103:0x02d3 A[Catch: all -> 0x0453, TryCatch #1 {all -> 0x0453, blocks: (B:5:0x000a, B:7:0x001e, B:10:0x003d, B:12:0x0043, B:15:0x0062, B:20:0x0081, B:22:0x0096, B:25:0x00b5, B:30:0x00d0, B:35:0x00fa, B:37:0x010b, B:38:0x010e, B:43:0x0129, B:47:0x0134, B:54:0x013f, B:60:0x0195, B:62:0x0199, B:63:0x01a3, B:68:0x01c0, B:73:0x01eb, B:75:0x022a, B:76:0x022e, B:78:0x0238, B:79:0x023c, B:84:0x0259, B:89:0x028b, B:91:0x029b, B:93:0x029f, B:95:0x02a9, B:98:0x02b4, B:100:0x02c5, B:99:0x02c1, B:101:0x02cf, B:103:0x02d3, B:105:0x02d7, B:107:0x02e1, B:110:0x02ec, B:112:0x02fd, B:111:0x02f9, B:113:0x0307, B:118:0x0324, B:120:0x0328, B:122:0x032c, B:124:0x0336, B:127:0x0341, B:129:0x0352, B:128:0x034e, B:130:0x035c, B:135:0x0379, B:137:0x037d, B:139:0x0381, B:141:0x038b, B:144:0x0396, B:146:0x03a7, B:145:0x03a3, B:147:0x03b1, B:152:0x03ce, B:154:0x03d2, B:156:0x03d8, B:157:0x03e5, B:162:0x0402, B:164:0x040c, B:165:0x0425, B:169:0x0435, B:161:0x03f5, B:151:0x03c1, B:134:0x036c, B:117:0x0317, B:88:0x027e, B:83:0x024c, B:72:0x01de, B:67:0x01b3, B:59:0x0186, B:42:0x011c, B:34:0x00ed, B:29:0x00c3, B:19:0x0074, B:55:0x0150), top: B:183:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0328 A[Catch: all -> 0x0453, TryCatch #1 {all -> 0x0453, blocks: (B:5:0x000a, B:7:0x001e, B:10:0x003d, B:12:0x0043, B:15:0x0062, B:20:0x0081, B:22:0x0096, B:25:0x00b5, B:30:0x00d0, B:35:0x00fa, B:37:0x010b, B:38:0x010e, B:43:0x0129, B:47:0x0134, B:54:0x013f, B:60:0x0195, B:62:0x0199, B:63:0x01a3, B:68:0x01c0, B:73:0x01eb, B:75:0x022a, B:76:0x022e, B:78:0x0238, B:79:0x023c, B:84:0x0259, B:89:0x028b, B:91:0x029b, B:93:0x029f, B:95:0x02a9, B:98:0x02b4, B:100:0x02c5, B:99:0x02c1, B:101:0x02cf, B:103:0x02d3, B:105:0x02d7, B:107:0x02e1, B:110:0x02ec, B:112:0x02fd, B:111:0x02f9, B:113:0x0307, B:118:0x0324, B:120:0x0328, B:122:0x032c, B:124:0x0336, B:127:0x0341, B:129:0x0352, B:128:0x034e, B:130:0x035c, B:135:0x0379, B:137:0x037d, B:139:0x0381, B:141:0x038b, B:144:0x0396, B:146:0x03a7, B:145:0x03a3, B:147:0x03b1, B:152:0x03ce, B:154:0x03d2, B:156:0x03d8, B:157:0x03e5, B:162:0x0402, B:164:0x040c, B:165:0x0425, B:169:0x0435, B:161:0x03f5, B:151:0x03c1, B:134:0x036c, B:117:0x0317, B:88:0x027e, B:83:0x024c, B:72:0x01de, B:67:0x01b3, B:59:0x0186, B:42:0x011c, B:34:0x00ed, B:29:0x00c3, B:19:0x0074, B:55:0x0150), top: B:183:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:137:0x037d A[Catch: all -> 0x0453, TryCatch #1 {all -> 0x0453, blocks: (B:5:0x000a, B:7:0x001e, B:10:0x003d, B:12:0x0043, B:15:0x0062, B:20:0x0081, B:22:0x0096, B:25:0x00b5, B:30:0x00d0, B:35:0x00fa, B:37:0x010b, B:38:0x010e, B:43:0x0129, B:47:0x0134, B:54:0x013f, B:60:0x0195, B:62:0x0199, B:63:0x01a3, B:68:0x01c0, B:73:0x01eb, B:75:0x022a, B:76:0x022e, B:78:0x0238, B:79:0x023c, B:84:0x0259, B:89:0x028b, B:91:0x029b, B:93:0x029f, B:95:0x02a9, B:98:0x02b4, B:100:0x02c5, B:99:0x02c1, B:101:0x02cf, B:103:0x02d3, B:105:0x02d7, B:107:0x02e1, B:110:0x02ec, B:112:0x02fd, B:111:0x02f9, B:113:0x0307, B:118:0x0324, B:120:0x0328, B:122:0x032c, B:124:0x0336, B:127:0x0341, B:129:0x0352, B:128:0x034e, B:130:0x035c, B:135:0x0379, B:137:0x037d, B:139:0x0381, B:141:0x038b, B:144:0x0396, B:146:0x03a7, B:145:0x03a3, B:147:0x03b1, B:152:0x03ce, B:154:0x03d2, B:156:0x03d8, B:157:0x03e5, B:162:0x0402, B:164:0x040c, B:165:0x0425, B:169:0x0435, B:161:0x03f5, B:151:0x03c1, B:134:0x036c, B:117:0x0317, B:88:0x027e, B:83:0x024c, B:72:0x01de, B:67:0x01b3, B:59:0x0186, B:42:0x011c, B:34:0x00ed, B:29:0x00c3, B:19:0x0074, B:55:0x0150), top: B:183:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:164:0x040c A[Catch: all -> 0x0453, TryCatch #1 {all -> 0x0453, blocks: (B:5:0x000a, B:7:0x001e, B:10:0x003d, B:12:0x0043, B:15:0x0062, B:20:0x0081, B:22:0x0096, B:25:0x00b5, B:30:0x00d0, B:35:0x00fa, B:37:0x010b, B:38:0x010e, B:43:0x0129, B:47:0x0134, B:54:0x013f, B:60:0x0195, B:62:0x0199, B:63:0x01a3, B:68:0x01c0, B:73:0x01eb, B:75:0x022a, B:76:0x022e, B:78:0x0238, B:79:0x023c, B:84:0x0259, B:89:0x028b, B:91:0x029b, B:93:0x029f, B:95:0x02a9, B:98:0x02b4, B:100:0x02c5, B:99:0x02c1, B:101:0x02cf, B:103:0x02d3, B:105:0x02d7, B:107:0x02e1, B:110:0x02ec, B:112:0x02fd, B:111:0x02f9, B:113:0x0307, B:118:0x0324, B:120:0x0328, B:122:0x032c, B:124:0x0336, B:127:0x0341, B:129:0x0352, B:128:0x034e, B:130:0x035c, B:135:0x0379, B:137:0x037d, B:139:0x0381, B:141:0x038b, B:144:0x0396, B:146:0x03a7, B:145:0x03a3, B:147:0x03b1, B:152:0x03ce, B:154:0x03d2, B:156:0x03d8, B:157:0x03e5, B:162:0x0402, B:164:0x040c, B:165:0x0425, B:169:0x0435, B:161:0x03f5, B:151:0x03c1, B:134:0x036c, B:117:0x0317, B:88:0x027e, B:83:0x024c, B:72:0x01de, B:67:0x01b3, B:59:0x0186, B:42:0x011c, B:34:0x00ed, B:29:0x00c3, B:19:0x0074, B:55:0x0150), top: B:183:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x013f A[Catch: all -> 0x0453, TRY_LEAVE, TryCatch #1 {all -> 0x0453, blocks: (B:5:0x000a, B:7:0x001e, B:10:0x003d, B:12:0x0043, B:15:0x0062, B:20:0x0081, B:22:0x0096, B:25:0x00b5, B:30:0x00d0, B:35:0x00fa, B:37:0x010b, B:38:0x010e, B:43:0x0129, B:47:0x0134, B:54:0x013f, B:60:0x0195, B:62:0x0199, B:63:0x01a3, B:68:0x01c0, B:73:0x01eb, B:75:0x022a, B:76:0x022e, B:78:0x0238, B:79:0x023c, B:84:0x0259, B:89:0x028b, B:91:0x029b, B:93:0x029f, B:95:0x02a9, B:98:0x02b4, B:100:0x02c5, B:99:0x02c1, B:101:0x02cf, B:103:0x02d3, B:105:0x02d7, B:107:0x02e1, B:110:0x02ec, B:112:0x02fd, B:111:0x02f9, B:113:0x0307, B:118:0x0324, B:120:0x0328, B:122:0x032c, B:124:0x0336, B:127:0x0341, B:129:0x0352, B:128:0x034e, B:130:0x035c, B:135:0x0379, B:137:0x037d, B:139:0x0381, B:141:0x038b, B:144:0x0396, B:146:0x03a7, B:145:0x03a3, B:147:0x03b1, B:152:0x03ce, B:154:0x03d2, B:156:0x03d8, B:157:0x03e5, B:162:0x0402, B:164:0x040c, B:165:0x0425, B:169:0x0435, B:161:0x03f5, B:151:0x03c1, B:134:0x036c, B:117:0x0317, B:88:0x027e, B:83:0x024c, B:72:0x01de, B:67:0x01b3, B:59:0x0186, B:42:0x011c, B:34:0x00ed, B:29:0x00c3, B:19:0x0074, B:55:0x0150), top: B:183:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0186 A[Catch: all -> 0x0453, TryCatch #1 {all -> 0x0453, blocks: (B:5:0x000a, B:7:0x001e, B:10:0x003d, B:12:0x0043, B:15:0x0062, B:20:0x0081, B:22:0x0096, B:25:0x00b5, B:30:0x00d0, B:35:0x00fa, B:37:0x010b, B:38:0x010e, B:43:0x0129, B:47:0x0134, B:54:0x013f, B:60:0x0195, B:62:0x0199, B:63:0x01a3, B:68:0x01c0, B:73:0x01eb, B:75:0x022a, B:76:0x022e, B:78:0x0238, B:79:0x023c, B:84:0x0259, B:89:0x028b, B:91:0x029b, B:93:0x029f, B:95:0x02a9, B:98:0x02b4, B:100:0x02c5, B:99:0x02c1, B:101:0x02cf, B:103:0x02d3, B:105:0x02d7, B:107:0x02e1, B:110:0x02ec, B:112:0x02fd, B:111:0x02f9, B:113:0x0307, B:118:0x0324, B:120:0x0328, B:122:0x032c, B:124:0x0336, B:127:0x0341, B:129:0x0352, B:128:0x034e, B:130:0x035c, B:135:0x0379, B:137:0x037d, B:139:0x0381, B:141:0x038b, B:144:0x0396, B:146:0x03a7, B:145:0x03a3, B:147:0x03b1, B:152:0x03ce, B:154:0x03d2, B:156:0x03d8, B:157:0x03e5, B:162:0x0402, B:164:0x040c, B:165:0x0425, B:169:0x0435, B:161:0x03f5, B:151:0x03c1, B:134:0x036c, B:117:0x0317, B:88:0x027e, B:83:0x024c, B:72:0x01de, B:67:0x01b3, B:59:0x0186, B:42:0x011c, B:34:0x00ed, B:29:0x00c3, B:19:0x0074, B:55:0x0150), top: B:183:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0199 A[Catch: all -> 0x0453, TryCatch #1 {all -> 0x0453, blocks: (B:5:0x000a, B:7:0x001e, B:10:0x003d, B:12:0x0043, B:15:0x0062, B:20:0x0081, B:22:0x0096, B:25:0x00b5, B:30:0x00d0, B:35:0x00fa, B:37:0x010b, B:38:0x010e, B:43:0x0129, B:47:0x0134, B:54:0x013f, B:60:0x0195, B:62:0x0199, B:63:0x01a3, B:68:0x01c0, B:73:0x01eb, B:75:0x022a, B:76:0x022e, B:78:0x0238, B:79:0x023c, B:84:0x0259, B:89:0x028b, B:91:0x029b, B:93:0x029f, B:95:0x02a9, B:98:0x02b4, B:100:0x02c5, B:99:0x02c1, B:101:0x02cf, B:103:0x02d3, B:105:0x02d7, B:107:0x02e1, B:110:0x02ec, B:112:0x02fd, B:111:0x02f9, B:113:0x0307, B:118:0x0324, B:120:0x0328, B:122:0x032c, B:124:0x0336, B:127:0x0341, B:129:0x0352, B:128:0x034e, B:130:0x035c, B:135:0x0379, B:137:0x037d, B:139:0x0381, B:141:0x038b, B:144:0x0396, B:146:0x03a7, B:145:0x03a3, B:147:0x03b1, B:152:0x03ce, B:154:0x03d2, B:156:0x03d8, B:157:0x03e5, B:162:0x0402, B:164:0x040c, B:165:0x0425, B:169:0x0435, B:161:0x03f5, B:151:0x03c1, B:134:0x036c, B:117:0x0317, B:88:0x027e, B:83:0x024c, B:72:0x01de, B:67:0x01b3, B:59:0x0186, B:42:0x011c, B:34:0x00ed, B:29:0x00c3, B:19:0x0074, B:55:0x0150), top: B:183:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x022a A[Catch: all -> 0x0453, TryCatch #1 {all -> 0x0453, blocks: (B:5:0x000a, B:7:0x001e, B:10:0x003d, B:12:0x0043, B:15:0x0062, B:20:0x0081, B:22:0x0096, B:25:0x00b5, B:30:0x00d0, B:35:0x00fa, B:37:0x010b, B:38:0x010e, B:43:0x0129, B:47:0x0134, B:54:0x013f, B:60:0x0195, B:62:0x0199, B:63:0x01a3, B:68:0x01c0, B:73:0x01eb, B:75:0x022a, B:76:0x022e, B:78:0x0238, B:79:0x023c, B:84:0x0259, B:89:0x028b, B:91:0x029b, B:93:0x029f, B:95:0x02a9, B:98:0x02b4, B:100:0x02c5, B:99:0x02c1, B:101:0x02cf, B:103:0x02d3, B:105:0x02d7, B:107:0x02e1, B:110:0x02ec, B:112:0x02fd, B:111:0x02f9, B:113:0x0307, B:118:0x0324, B:120:0x0328, B:122:0x032c, B:124:0x0336, B:127:0x0341, B:129:0x0352, B:128:0x034e, B:130:0x035c, B:135:0x0379, B:137:0x037d, B:139:0x0381, B:141:0x038b, B:144:0x0396, B:146:0x03a7, B:145:0x03a3, B:147:0x03b1, B:152:0x03ce, B:154:0x03d2, B:156:0x03d8, B:157:0x03e5, B:162:0x0402, B:164:0x040c, B:165:0x0425, B:169:0x0435, B:161:0x03f5, B:151:0x03c1, B:134:0x036c, B:117:0x0317, B:88:0x027e, B:83:0x024c, B:72:0x01de, B:67:0x01b3, B:59:0x0186, B:42:0x011c, B:34:0x00ed, B:29:0x00c3, B:19:0x0074, B:55:0x0150), top: B:183:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0238 A[Catch: all -> 0x0453, TryCatch #1 {all -> 0x0453, blocks: (B:5:0x000a, B:7:0x001e, B:10:0x003d, B:12:0x0043, B:15:0x0062, B:20:0x0081, B:22:0x0096, B:25:0x00b5, B:30:0x00d0, B:35:0x00fa, B:37:0x010b, B:38:0x010e, B:43:0x0129, B:47:0x0134, B:54:0x013f, B:60:0x0195, B:62:0x0199, B:63:0x01a3, B:68:0x01c0, B:73:0x01eb, B:75:0x022a, B:76:0x022e, B:78:0x0238, B:79:0x023c, B:84:0x0259, B:89:0x028b, B:91:0x029b, B:93:0x029f, B:95:0x02a9, B:98:0x02b4, B:100:0x02c5, B:99:0x02c1, B:101:0x02cf, B:103:0x02d3, B:105:0x02d7, B:107:0x02e1, B:110:0x02ec, B:112:0x02fd, B:111:0x02f9, B:113:0x0307, B:118:0x0324, B:120:0x0328, B:122:0x032c, B:124:0x0336, B:127:0x0341, B:129:0x0352, B:128:0x034e, B:130:0x035c, B:135:0x0379, B:137:0x037d, B:139:0x0381, B:141:0x038b, B:144:0x0396, B:146:0x03a7, B:145:0x03a3, B:147:0x03b1, B:152:0x03ce, B:154:0x03d2, B:156:0x03d8, B:157:0x03e5, B:162:0x0402, B:164:0x040c, B:165:0x0425, B:169:0x0435, B:161:0x03f5, B:151:0x03c1, B:134:0x036c, B:117:0x0317, B:88:0x027e, B:83:0x024c, B:72:0x01de, B:67:0x01b3, B:59:0x0186, B:42:0x011c, B:34:0x00ed, B:29:0x00c3, B:19:0x0074, B:55:0x0150), top: B:183:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x029b A[Catch: all -> 0x0453, TryCatch #1 {all -> 0x0453, blocks: (B:5:0x000a, B:7:0x001e, B:10:0x003d, B:12:0x0043, B:15:0x0062, B:20:0x0081, B:22:0x0096, B:25:0x00b5, B:30:0x00d0, B:35:0x00fa, B:37:0x010b, B:38:0x010e, B:43:0x0129, B:47:0x0134, B:54:0x013f, B:60:0x0195, B:62:0x0199, B:63:0x01a3, B:68:0x01c0, B:73:0x01eb, B:75:0x022a, B:76:0x022e, B:78:0x0238, B:79:0x023c, B:84:0x0259, B:89:0x028b, B:91:0x029b, B:93:0x029f, B:95:0x02a9, B:98:0x02b4, B:100:0x02c5, B:99:0x02c1, B:101:0x02cf, B:103:0x02d3, B:105:0x02d7, B:107:0x02e1, B:110:0x02ec, B:112:0x02fd, B:111:0x02f9, B:113:0x0307, B:118:0x0324, B:120:0x0328, B:122:0x032c, B:124:0x0336, B:127:0x0341, B:129:0x0352, B:128:0x034e, B:130:0x035c, B:135:0x0379, B:137:0x037d, B:139:0x0381, B:141:0x038b, B:144:0x0396, B:146:0x03a7, B:145:0x03a3, B:147:0x03b1, B:152:0x03ce, B:154:0x03d2, B:156:0x03d8, B:157:0x03e5, B:162:0x0402, B:164:0x040c, B:165:0x0425, B:169:0x0435, B:161:0x03f5, B:151:0x03c1, B:134:0x036c, B:117:0x0317, B:88:0x027e, B:83:0x024c, B:72:0x01de, B:67:0x01b3, B:59:0x0186, B:42:0x011c, B:34:0x00ed, B:29:0x00c3, B:19:0x0074, B:55:0x0150), top: B:183:0x000a }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static synchronized boolean a(java.lang.String r17, final com.bytedance.pangle.plugin.Plugin r18, java.lang.StringBuilder r19) {
        /*
            Method dump skipped, instructions count: 1156
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.pangle.plugin.c.a(java.lang.String, com.bytedance.pangle.plugin.Plugin, java.lang.StringBuilder):boolean");
    }

    private static void a(String str, int i2, @NonNull String str2, int i4, long j4, String str3) {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        try {
            jSONObject.putOpt("status_code", com.bytedance.pangle.log.c.a(Integer.valueOf(i2)));
            jSONObject.putOpt("plugin_package_name", com.bytedance.pangle.log.c.a(str2));
            jSONObject.putOpt("version_code", com.bytedance.pangle.log.c.a(Integer.valueOf(i4)));
            jSONObject3.putOpt("duration", Integer.valueOf(com.bytedance.pangle.log.c.b(Long.valueOf(j4))));
            jSONObject2.putOpt("message", com.bytedance.pangle.log.c.a(str3));
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
        com.bytedance.pangle.b.b.a().a(str, jSONObject, jSONObject3, jSONObject2);
    }
}
