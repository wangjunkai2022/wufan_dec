package org.apache.http.impl.cookie;

import com.join.mgps.Util.g0;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import org.apache.http.annotation.Immutable;
@Immutable
/* loaded from: classes5.dex */
public class PublicSuffixListParserHC4 {
    private static final int MAX_LINE_LEN = 256;
    private final PublicSuffixFilterHC4 filter;

    PublicSuffixListParserHC4(PublicSuffixFilterHC4 publicSuffixFilterHC4) {
        this.filter = publicSuffixFilterHC4;
    }

    private boolean readLine(Reader reader, StringBuilder sb) throws IOException {
        char c4;
        sb.setLength(0);
        boolean z3 = false;
        do {
            int read = reader.read();
            if (read == -1 || (c4 = (char) read) == '\n') {
                return read != -1;
            }
            if (Character.isWhitespace(c4)) {
                z3 = true;
            }
            if (!z3) {
                sb.append(c4);
            }
        } while (sb.length() <= 256);
        throw new IOException("Line too long");
    }

    public void parse(Reader reader) throws IOException {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        BufferedReader bufferedReader = new BufferedReader(reader);
        StringBuilder sb = new StringBuilder(256);
        boolean z3 = true;
        while (z3) {
            z3 = readLine(bufferedReader, sb);
            String sb2 = sb.toString();
            if (sb2.length() != 0 && !sb2.startsWith("//")) {
                if (sb2.startsWith(g0.f27568a)) {
                    sb2 = sb2.substring(1);
                }
                boolean startsWith = sb2.startsWith("!");
                if (startsWith) {
                    sb2 = sb2.substring(1);
                }
                if (startsWith) {
                    arrayList2.add(sb2);
                } else {
                    arrayList.add(sb2);
                }
            }
        }
        this.filter.setPublicSuffixes(arrayList);
        this.filter.setExceptions(arrayList2);
    }
}
