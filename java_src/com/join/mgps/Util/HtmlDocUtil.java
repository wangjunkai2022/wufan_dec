package com.join.mgps.Util;

import android.graphics.Color;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;
import com.umeng.analytics.pro.ai;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.TextNode;
/* loaded from: classes3.dex */
public class HtmlDocUtil {

    /* loaded from: classes3.dex */
    public static class PostDetail {

        /* renamed from: a  reason: collision with root package name */
        public Type f27380a;

        /* renamed from: b  reason: collision with root package name */
        public Object f27381b;

        /* loaded from: classes3.dex */
        public enum Type {
            Text,
            Image,
            Video
        }

        public Object a() {
            return this.f27381b;
        }

        public void b(Object obj) {
            this.f27381b = obj;
        }

        public void c(Type type) {
            this.f27380a = type;
        }

        public Type getType() {
            return this.f27380a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class a extends ClickableSpan {

        /* renamed from: a  reason: collision with root package name */
        private String f27382a;

        public a() {
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View view) {
            IntentUtil.getInstance().goShareWebActivity(view.getContext(), this.f27382a);
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            textPaint.setColor(textPaint.linkColor);
            textPaint.bgColor = Color.parseColor("#00000000");
            textPaint.setUnderlineText(false);
            textPaint.clearShadowLayer();
        }

        public a(String str) {
            this.f27382a = str;
        }
    }

    /* loaded from: classes3.dex */
    public static class b extends PostDetail {

        /* renamed from: c  reason: collision with root package name */
        public String f27383c;

        /* renamed from: d  reason: collision with root package name */
        public String f27384d;

        public b() {
        }

        public String d() {
            return this.f27383c;
        }

        public String e() {
            return this.f27384d;
        }

        public void f(String str) {
            this.f27383c = str;
        }

        public void g(String str) {
            this.f27384d = str;
        }

        public b(String str, String str2) {
            this.f27383c = str;
            this.f27384d = str2;
        }
    }

    /* loaded from: classes3.dex */
    public static class d extends PostDetail {

        /* renamed from: c  reason: collision with root package name */
        public String f27386c;

        /* renamed from: d  reason: collision with root package name */
        public String f27387d;

        public d() {
        }

        public String d() {
            return this.f27386c;
        }

        public String e() {
            return this.f27387d;
        }

        public void f(String str) {
            this.f27386c = str;
        }

        public void g(String str) {
            this.f27387d = str;
        }

        public d(String str, String str2) {
            this.f27386c = str;
            this.f27387d = str2;
        }
    }

    public static String a(String str) {
        char[] charArray = str.toCharArray();
        for (int i2 = 0; i2 < charArray.length; i2++) {
            if (charArray[i2] == 12288) {
                charArray[i2] = ' ';
            } else if (charArray[i2] > 65280 && charArray[i2] < 65375) {
                charArray[i2] = (char) (charArray[i2] - 65248);
            }
        }
        return new String(charArray);
    }

    public static String b(String str) {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm", Locale.CHINA).format(new Date(Long.parseLong(str)));
    }

    public static List<PostDetail> c(String str) {
        Iterator<Element> it2;
        Iterator<Element> it3;
        ArrayList arrayList = new ArrayList();
        Iterator<Element> it4 = Jsoup.parse(str).getElementsByClass("detail").get(0).children().iterator();
        while (it4.hasNext()) {
            Element next = it4.next();
            PostDetail postDetail = new PostDetail();
            String nodeName = next.nodeName();
            if (nodeName.equals(ai.av)) {
                List<Node> childNodes = next.childNodes();
                int i2 = 0;
                while (i2 < childNodes.size()) {
                    PostDetail postDetail2 = new PostDetail();
                    Node node = childNodes.get(i2);
                    if (node instanceof TextNode) {
                        String text = ((TextNode) node).text();
                        if (arrayList.size() > 0) {
                            PostDetail postDetail3 = (PostDetail) arrayList.get(arrayList.size() - 1);
                            if (postDetail3.getType() == PostDetail.Type.Text && i2 != 0) {
                                SpannableStringBuilder d4 = ((c) postDetail3.a()).d();
                                d4.append((CharSequence) ("<br/>" + text));
                            }
                        }
                        postDetail2.c(PostDetail.Type.Text);
                        postDetail2.b(new c(new SpannableStringBuilder().append((CharSequence) text)));
                        arrayList.add(postDetail2);
                    } else if (node instanceof Element) {
                        if (node.nodeName().equals("img")) {
                            if (!d2.h(node.attr("uurl"))) {
                                postDetail2.c(PostDetail.Type.Video);
                                postDetail2.b(new d(node.attr("src"), node.attr("uurl")));
                            } else {
                                postDetail2.c(PostDetail.Type.Image);
                                postDetail2.b(new b(node.attr("src"), node.attr("bsrc")));
                            }
                            arrayList.add(postDetail2);
                        } else if (node.nodeName().equals("br")) {
                            if (arrayList.size() > 0) {
                                PostDetail postDetail4 = (PostDetail) arrayList.get(arrayList.size() - 1);
                                if (postDetail4.getType() == PostDetail.Type.Text && i2 != 0) {
                                    SpannableStringBuilder d5 = ((c) postDetail4.a()).d();
                                    d5.append((CharSequence) "\n");
                                    postDetail4.b(new c(d5));
                                }
                            }
                            postDetail2.c(PostDetail.Type.Text);
                            postDetail2.b(new c(new SpannableStringBuilder().append((CharSequence) " ")));
                            arrayList.add(postDetail2);
                        } else if (node.nodeName().equals("a")) {
                            String attr = node.attr("href");
                            if (d2.h(attr)) {
                                attr = "#";
                            }
                            SpannableString spannableString = new SpannableString(((Element) node).text());
                            it3 = it4;
                            spannableString.setSpan(new a(attr), 0, spannableString.length(), 17);
                            if (arrayList.size() > 0) {
                                PostDetail postDetail5 = (PostDetail) arrayList.get(arrayList.size() - 1);
                                if (postDetail5.getType() == PostDetail.Type.Text && i2 != 0) {
                                    ((c) postDetail5.a()).d().append((CharSequence) spannableString);
                                    i2++;
                                    it4 = it3;
                                }
                            }
                            postDetail2.c(PostDetail.Type.Text);
                            postDetail2.b(new c(new SpannableStringBuilder().append((CharSequence) spannableString)));
                            arrayList.add(postDetail2);
                            i2++;
                            it4 = it3;
                        }
                    }
                    it3 = it4;
                    i2++;
                    it4 = it3;
                }
                it2 = it4;
            } else {
                it2 = it4;
                if (nodeName.equals("img")) {
                    if (!d2.h(next.attr("uurl"))) {
                        postDetail.c(PostDetail.Type.Video);
                        postDetail.b(new d(next.attr("src"), next.attr("uurl")));
                    } else {
                        postDetail.c(PostDetail.Type.Image);
                        postDetail.b(new b(next.attr("src"), next.attr("bsrc")));
                    }
                    arrayList.add(postDetail);
                } else if (next.nodeName().equals("a")) {
                    String attr2 = next.attr("href");
                    String str2 = d2.h(attr2) ? "#" : attr2;
                    SpannableString spannableString2 = new SpannableString(next.text());
                    spannableString2.setSpan(new a(str2), 0, spannableString2.length(), 17);
                    postDetail.c(PostDetail.Type.Text);
                    postDetail.b(new c(new SpannableStringBuilder().append((CharSequence) spannableString2)));
                    arrayList.add(postDetail);
                    it4 = it2;
                }
            }
            it4 = it2;
        }
        return arrayList;
    }

    public static boolean d(String str) {
        if (d2.h(str)) {
            return false;
        }
        try {
            Document parse = Jsoup.parse(str);
            if (parse == null || parse.getElementsByClass("detail") == null) {
                return false;
            }
            return parse.getElementsByClass("detail").size() != 0;
        } catch (Exception e4) {
            e4.printStackTrace();
            return false;
        }
    }

    /* loaded from: classes3.dex */
    public static class c extends PostDetail {

        /* renamed from: c  reason: collision with root package name */
        public SpannableStringBuilder f27385c;

        public c(SpannableStringBuilder spannableStringBuilder) {
            this.f27385c = spannableStringBuilder;
        }

        public SpannableStringBuilder d() {
            return this.f27385c;
        }

        public void e(SpannableStringBuilder spannableStringBuilder) {
            this.f27385c = spannableStringBuilder;
        }

        public c() {
        }
    }
}
