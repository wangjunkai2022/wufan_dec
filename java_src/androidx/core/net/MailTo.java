package androidx.core.net;

import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Preconditions;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import kotlin.text.Typography;
import m.a;
/* loaded from: classes.dex */
public final class MailTo {
    public static final String MAILTO_SCHEME = "mailto:";

    /* renamed from: b  reason: collision with root package name */
    private static final String f4479b = "mailto";

    /* renamed from: c  reason: collision with root package name */
    private static final String f4480c = "to";

    /* renamed from: d  reason: collision with root package name */
    private static final String f4481d = "body";

    /* renamed from: e  reason: collision with root package name */
    private static final String f4482e = "cc";

    /* renamed from: f  reason: collision with root package name */
    private static final String f4483f = "bcc";

    /* renamed from: g  reason: collision with root package name */
    private static final String f4484g = "subject";

    /* renamed from: a  reason: collision with root package name */
    private HashMap<String, String> f4485a = new HashMap<>();

    private MailTo() {
    }

    public static boolean isMailTo(@Nullable String str) {
        return str != null && str.startsWith(MAILTO_SCHEME);
    }

    @NonNull
    public static MailTo parse(@NonNull String str) throws ParseException {
        String decode;
        String substring;
        Preconditions.checkNotNull(str);
        if (isMailTo(str)) {
            int indexOf = str.indexOf(35);
            if (indexOf != -1) {
                str = str.substring(0, indexOf);
            }
            int indexOf2 = str.indexOf(63);
            if (indexOf2 == -1) {
                decode = Uri.decode(str.substring(7));
                substring = null;
            } else {
                decode = Uri.decode(str.substring(7, indexOf2));
                substring = str.substring(indexOf2 + 1);
            }
            MailTo mailTo = new MailTo();
            if (substring != null) {
                for (String str2 : substring.split(a.f72566d)) {
                    String[] split = str2.split(SimpleComparison.EQUAL_TO_OPERATION, 2);
                    if (split.length != 0) {
                        mailTo.f4485a.put(Uri.decode(split[0]).toLowerCase(Locale.ROOT), split.length > 1 ? Uri.decode(split[1]) : null);
                    }
                }
            }
            String to = mailTo.getTo();
            if (to != null) {
                decode = decode + ", " + to;
            }
            mailTo.f4485a.put("to", decode);
            return mailTo;
        }
        throw new ParseException("Not a mailto scheme");
    }

    @Nullable
    public String getBcc() {
        return this.f4485a.get(f4483f);
    }

    @Nullable
    public String getBody() {
        return this.f4485a.get(f4481d);
    }

    @Nullable
    public String getCc() {
        return this.f4485a.get(f4482e);
    }

    @Nullable
    public Map<String, String> getHeaders() {
        return this.f4485a;
    }

    @Nullable
    public String getSubject() {
        return this.f4485a.get(f4484g);
    }

    @Nullable
    public String getTo() {
        return this.f4485a.get("to");
    }

    @NonNull
    public String toString() {
        StringBuilder sb = new StringBuilder(MAILTO_SCHEME);
        sb.append('?');
        for (Map.Entry<String, String> entry : this.f4485a.entrySet()) {
            sb.append(Uri.encode(entry.getKey()));
            sb.append('=');
            sb.append(Uri.encode(entry.getValue()));
            sb.append(Typography.amp);
        }
        return sb.toString();
    }

    public static boolean isMailTo(@Nullable Uri uri) {
        return uri != null && f4479b.equals(uri.getScheme());
    }

    @NonNull
    public static MailTo parse(@NonNull Uri uri) throws ParseException {
        return parse(uri.toString());
    }
}
