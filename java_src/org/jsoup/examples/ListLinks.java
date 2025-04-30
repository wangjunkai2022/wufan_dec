package org.jsoup.examples;

import com.join.mgps.Util.g0;
import java.io.IOException;
import java.util.Iterator;
import org.jsoup.Jsoup;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
/* loaded from: classes5.dex */
public class ListLinks {
    public static void main(String[] strArr) throws IOException {
        Validate.isTrue(strArr.length == 1, "usage: supply url to fetch");
        String str = strArr[0];
        print("Fetching %s...", str);
        Document document = Jsoup.connect(str).get();
        Elements select = document.select("a[href]");
        Elements select2 = document.select("[src]");
        Elements select3 = document.select("link[href]");
        print("\nMedia: (%d)", Integer.valueOf(select2.size()));
        Iterator<Element> it2 = select2.iterator();
        while (it2.hasNext()) {
            Element next = it2.next();
            if (next.tagName().equals("img")) {
                print(" * %s: <%s> %sx%s (%s)", next.tagName(), next.attr("abs:src"), next.attr("width"), next.attr("height"), trim(next.attr("alt"), 20));
            } else {
                print(" * %s: <%s>", next.tagName(), next.attr("abs:src"));
            }
        }
        print("\nImports: (%d)", Integer.valueOf(select3.size()));
        Iterator<Element> it3 = select3.iterator();
        while (it3.hasNext()) {
            Element next2 = it3.next();
            print(" * %s <%s> (%s)", next2.tagName(), next2.attr("abs:href"), next2.attr("rel"));
        }
        print("\nLinks: (%d)", Integer.valueOf(select.size()));
        Iterator<Element> it4 = select.iterator();
        while (it4.hasNext()) {
            Element next3 = it4.next();
            print(" * a: <%s>  (%s)", next3.attr("abs:href"), trim(next3.text(), 35));
        }
    }

    private static void print(String str, Object... objArr) {
        System.out.println(String.format(str, objArr));
    }

    private static String trim(String str, int i2) {
        if (str.length() > i2) {
            return str.substring(0, i2 - 1) + g0.f27568a;
        }
        return str;
    }
}
