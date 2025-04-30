package org.jsoup.nodes;

import java.util.Map;
import m.a;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.Document;
/* loaded from: classes5.dex */
public class Attribute implements Map.Entry<String, String>, Cloneable {
    private String key;
    private String value;

    public Attribute(String str, String str2) {
        Validate.notEmpty(str);
        Validate.notNull(str2);
        this.key = str.trim().toLowerCase();
        this.value = str2;
    }

    public static Attribute createFromEncoded(String str, String str2) {
        return new Attribute(str, Entities.unescape(str2, true));
    }

    @Override // java.util.Map.Entry
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Attribute) {
            Attribute attribute = (Attribute) obj;
            String str = this.key;
            if (str == null ? attribute.key == null : str.equals(attribute.key)) {
                String str2 = this.value;
                String str3 = attribute.value;
                return str2 == null ? str3 == null : str2.equals(str3);
            }
            return false;
        }
        return false;
    }

    @Override // java.util.Map.Entry
    public int hashCode() {
        String str = this.key;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.value;
        return hashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public String html() {
        return this.key + "=\"" + Entities.escape(this.value, new Document("").outputSettings()) + a.f72569g;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean isDataAttribute() {
        return this.key.startsWith("data-") && this.key.length() > 5;
    }

    public void setKey(String str) {
        Validate.notEmpty(str);
        this.key = str.trim().toLowerCase();
    }

    public String toString() {
        return html();
    }

    public Attribute clone() {
        try {
            return (Attribute) super.clone();
        } catch (CloneNotSupportedException e4) {
            throw new RuntimeException(e4);
        }
    }

    @Override // java.util.Map.Entry
    public String getKey() {
        return this.key;
    }

    @Override // java.util.Map.Entry
    public String getValue() {
        return this.value;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void html(StringBuilder sb, Document.OutputSettings outputSettings) {
        sb.append(this.key);
        sb.append("=\"");
        sb.append(Entities.escape(this.value, outputSettings));
        sb.append(a.f72569g);
    }

    @Override // java.util.Map.Entry
    public String setValue(String str) {
        Validate.notNull(str);
        String str2 = this.value;
        this.value = str;
        return str2;
    }
}
