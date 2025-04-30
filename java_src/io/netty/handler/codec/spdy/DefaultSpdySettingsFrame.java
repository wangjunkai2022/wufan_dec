package io.netty.handler.codec.spdy;

import io.netty.util.internal.StringUtil;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
/* loaded from: classes5.dex */
public class DefaultSpdySettingsFrame implements SpdySettingsFrame {
    private boolean clear;
    private final Map<Integer, Setting> settingsMap = new TreeMap();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class Setting {
        private boolean persist;
        private boolean persisted;
        private int value;

        Setting(int i2, boolean z3, boolean z4) {
            this.value = i2;
            this.persist = z3;
            this.persisted = z4;
        }

        int getValue() {
            return this.value;
        }

        boolean isPersist() {
            return this.persist;
        }

        boolean isPersisted() {
            return this.persisted;
        }

        void setPersist(boolean z3) {
            this.persist = z3;
        }

        void setPersisted(boolean z3) {
            this.persisted = z3;
        }

        void setValue(int i2) {
            this.value = i2;
        }
    }

    private void appendSettings(StringBuilder sb) {
        for (Map.Entry<Integer, Setting> entry : getSettings()) {
            Setting value = entry.getValue();
            sb.append("--> ");
            sb.append(entry.getKey());
            sb.append(':');
            sb.append(value.getValue());
            sb.append(" (persist value: ");
            sb.append(value.isPersist());
            sb.append("; persisted: ");
            sb.append(value.isPersisted());
            sb.append(')');
            sb.append(StringUtil.NEWLINE);
        }
    }

    private Set<Map.Entry<Integer, Setting>> getSettings() {
        return this.settingsMap.entrySet();
    }

    @Override // io.netty.handler.codec.spdy.SpdySettingsFrame
    public boolean clearPreviouslyPersistedSettings() {
        return this.clear;
    }

    @Override // io.netty.handler.codec.spdy.SpdySettingsFrame
    public int getValue(int i2) {
        Setting setting = this.settingsMap.get(Integer.valueOf(i2));
        if (setting != null) {
            return setting.getValue();
        }
        return -1;
    }

    @Override // io.netty.handler.codec.spdy.SpdySettingsFrame
    public Set<Integer> ids() {
        return this.settingsMap.keySet();
    }

    @Override // io.netty.handler.codec.spdy.SpdySettingsFrame
    public boolean isPersistValue(int i2) {
        Setting setting = this.settingsMap.get(Integer.valueOf(i2));
        return setting != null && setting.isPersist();
    }

    @Override // io.netty.handler.codec.spdy.SpdySettingsFrame
    public boolean isPersisted(int i2) {
        Setting setting = this.settingsMap.get(Integer.valueOf(i2));
        return setting != null && setting.isPersisted();
    }

    @Override // io.netty.handler.codec.spdy.SpdySettingsFrame
    public boolean isSet(int i2) {
        return this.settingsMap.containsKey(Integer.valueOf(i2));
    }

    @Override // io.netty.handler.codec.spdy.SpdySettingsFrame
    public SpdySettingsFrame removeValue(int i2) {
        this.settingsMap.remove(Integer.valueOf(i2));
        return this;
    }

    @Override // io.netty.handler.codec.spdy.SpdySettingsFrame
    public SpdySettingsFrame setClearPreviouslyPersistedSettings(boolean z3) {
        this.clear = z3;
        return this;
    }

    @Override // io.netty.handler.codec.spdy.SpdySettingsFrame
    public SpdySettingsFrame setPersistValue(int i2, boolean z3) {
        Setting setting = this.settingsMap.get(Integer.valueOf(i2));
        if (setting != null) {
            setting.setPersist(z3);
        }
        return this;
    }

    @Override // io.netty.handler.codec.spdy.SpdySettingsFrame
    public SpdySettingsFrame setPersisted(int i2, boolean z3) {
        Setting setting = this.settingsMap.get(Integer.valueOf(i2));
        if (setting != null) {
            setting.setPersisted(z3);
        }
        return this;
    }

    @Override // io.netty.handler.codec.spdy.SpdySettingsFrame
    public SpdySettingsFrame setValue(int i2, int i4) {
        return setValue(i2, i4, false, false);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(StringUtil.simpleClassName(this));
        String str = StringUtil.NEWLINE;
        sb.append(str);
        appendSettings(sb);
        sb.setLength(sb.length() - str.length());
        return sb.toString();
    }

    @Override // io.netty.handler.codec.spdy.SpdySettingsFrame
    public SpdySettingsFrame setValue(int i2, int i4, boolean z3, boolean z4) {
        if (i2 >= 0 && i2 <= 16777215) {
            Integer valueOf = Integer.valueOf(i2);
            Setting setting = this.settingsMap.get(valueOf);
            if (setting != null) {
                setting.setValue(i4);
                setting.setPersist(z3);
                setting.setPersisted(z4);
            } else {
                this.settingsMap.put(valueOf, new Setting(i4, z3, z4));
            }
            return this;
        }
        throw new IllegalArgumentException("Setting ID is not valid: " + i2);
    }
}
