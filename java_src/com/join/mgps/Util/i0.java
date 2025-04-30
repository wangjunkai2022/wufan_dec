package com.join.mgps.Util;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.ImageSpan;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.MApplication;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.component.photoviewer.ImagePagerActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.HtmlDocUtil;
import com.join.mgps.activity.ForumIndexActivity_;
import com.join.mgps.activity.ForumPostsActivity;
import com.join.mgps.activity.ForumPostsActivity_;
import com.join.mgps.activity.ForumProfileCommentActivity_;
import com.join.mgps.activity.ForumProfileFavoritesActivity_;
import com.join.mgps.activity.ForumProfileMessageActivity_;
import com.join.mgps.activity.ForumProfileMessageReplyActivity;
import com.join.mgps.activity.ForumProfileMessageReplyActivity_;
import com.join.mgps.activity.ForumTopicActivity;
import com.join.mgps.activity.ForumTopicActivity_;
import com.join.mgps.activity.HomePopupAdActivity_;
import com.join.mgps.activity.MGMainActivity_;
import com.join.mgps.activity.MYAccountDetialActivity_;
import com.join.mgps.activity.OemDetailActivity;
import com.join.mgps.activity.OemDetailActivity_;
import com.join.mgps.activity.SearchHintActivity_;
import com.join.mgps.activity.SharePostsActivity;
import com.join.mgps.activity.SharePostsActivity_;
import com.join.mgps.activity.login.LoginSplashActivity_;
import com.join.mgps.db.tables.ForumTable;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.BannerBean;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.ForumBannerBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.ForumData;
import com.join.mgps.dto.ForumRequestBean;
import com.join.mgps.dto.OemBean;
import com.join.mgps.dto.PayCenterOrderRequest;
import com.join.mgps.dto.RecommendLabelTag;
import com.join.mgps.dto.ResponseDownloadCenterAd;
import com.join.mgps.dto.ShareBean;
import java.io.File;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.androidannotations.annotations.EBean;
/* compiled from: ForumUtil.java */
@EBean(scope = EBean.Scope.Singleton)
/* loaded from: classes3.dex */
public class i0 {

    /* renamed from: b  reason: collision with root package name */
    static String f27590b = "i0";

    /* renamed from: c  reason: collision with root package name */
    public static int f27591c = 1200000;

    /* renamed from: d  reason: collision with root package name */
    public static int f27592d = 10;

    /* renamed from: e  reason: collision with root package name */
    public static int f27593e = 6;

    /* renamed from: f  reason: collision with root package name */
    public static int f27594f = 2;

    /* renamed from: g  reason: collision with root package name */
    public static long f27595g = 314572;

    /* renamed from: h  reason: collision with root package name */
    public static long f27596h = 104857;

    /* renamed from: i  reason: collision with root package name */
    public static Bitmap.CompressFormat f27597i = Bitmap.CompressFormat.JPEG;

    /* renamed from: j  reason: collision with root package name */
    public static int f27598j = 6;

    /* renamed from: k  reason: collision with root package name */
    public static final int f27599k = 1;

    /* renamed from: l  reason: collision with root package name */
    public static final int f27600l = 2;

    /* renamed from: m  reason: collision with root package name */
    public static final int f27601m = 3;

    /* renamed from: a  reason: collision with root package name */
    private LinkedList<j> f27602a;

    /* compiled from: ForumUtil.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f27603a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f27604b;

        a(String str, String str2) {
            this.f27603a = str;
            this.f27604b = str2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (d2.i(this.f27603a)) {
                i0.Q0(view.getContext(), this.f27603a);
            } else if (!d2.i(this.f27604b) || this.f27604b.equals("-1")) {
            } else {
                ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
                forumPostsBean.setPid(Integer.parseInt(this.f27604b));
                i0.v0(view.getContext(), forumPostsBean);
            }
        }
    }

    /* compiled from: ForumUtil.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ IntentDateBean f27605a;

        b(IntentDateBean intentDateBean) {
            this.f27605a = intentDateBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f27605a == null) {
                return;
            }
            IntentUtil.getInstance().intentActivity(view.getContext(), this.f27605a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ForumUtil.java */
    /* loaded from: classes3.dex */
    public class c implements TextUtils.EllipsizeCallback {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int[] f27606a;

        c(int[] iArr) {
            this.f27606a = iArr;
        }

        @Override // android.text.TextUtils.EllipsizeCallback
        public void ellipsized(int i2, int i4) {
            this.f27606a[0] = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ForumUtil.java */
    /* loaded from: classes3.dex */
    public class d implements ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ TextView f27607a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ SpannableStringBuilder f27608b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f27609c;

        d(TextView textView, SpannableStringBuilder spannableStringBuilder, int i2) {
            this.f27607a = textView;
            this.f27608b = spannableStringBuilder;
            this.f27609c = i2;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            this.f27607a.setText(this.f27608b);
            if (this.f27607a.getLineCount() <= this.f27609c) {
                i0.i1(this.f27607a.getViewTreeObserver(), this);
                return;
            }
            int lineEnd = this.f27607a.getLayout().getLineEnd(this.f27609c - 1);
            String str = ((Object) this.f27608b.subSequence(0, lineEnd - 3)) + "...";
            if (!TextUtils.isEmpty(str) && this.f27608b.length() > str.length()) {
                this.f27608b.replace(str.length(), this.f27608b.length(), (CharSequence) "");
            }
            this.f27607a.setText(this.f27608b);
        }
    }

    /* compiled from: ForumUtil.java */
    /* loaded from: classes3.dex */
    class e implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f27610a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f27611b;

        e(List list, int i2) {
            this.f27610a = list;
            this.f27611b = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            String[] strArr = new String[this.f27610a.size()];
            this.f27610a.toArray(strArr);
            i0.G0(view.getContext(), this.f27611b, strArr);
        }
    }

    /* compiled from: ForumUtil.java */
    /* loaded from: classes3.dex */
    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            i0.R0(view.getContext());
        }
    }

    /* compiled from: ForumUtil.java */
    /* loaded from: classes3.dex */
    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            i0.T0(view.getContext());
        }
    }

    /* compiled from: ForumUtil.java */
    /* loaded from: classes3.dex */
    static /* synthetic */ class h {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f27612a;

        static {
            int[] iArr = new int[HtmlDocUtil.PostDetail.Type.values().length];
            f27612a = iArr;
            try {
                iArr[HtmlDocUtil.PostDetail.Type.Text.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f27612a[HtmlDocUtil.PostDetail.Type.Image.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f27612a[HtmlDocUtil.PostDetail.Type.Video.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* compiled from: ForumUtil.java */
    /* loaded from: classes3.dex */
    private static abstract class i {
        private i() {
        }

        public abstract void a(List<ForumBean> list);

        public abstract void b(int i2);

        public abstract void c(ForumBean.ForumProfilePostUserInfoBean forumProfilePostUserInfoBean);

        public abstract void d(int i2);

        public abstract void e(ForumData.ForumPostsSubmitData forumPostsSubmitData);

        /* synthetic */ i(a aVar) {
            this();
        }
    }

    /* compiled from: ForumUtil.java */
    /* loaded from: classes3.dex */
    public static class j extends i {
        public j() {
            super(null);
        }

        @Override // com.join.mgps.Util.i0.i
        public void a(List<ForumBean> list) {
        }

        @Override // com.join.mgps.Util.i0.i
        public void b(int i2) {
        }

        @Override // com.join.mgps.Util.i0.i
        public void c(ForumBean.ForumProfilePostUserInfoBean forumProfilePostUserInfoBean) {
        }

        @Override // com.join.mgps.Util.i0.i
        public void d(int i2) {
        }

        @Override // com.join.mgps.Util.i0.i
        public void e(ForumData.ForumPostsSubmitData forumPostsSubmitData) {
        }
    }

    /* compiled from: ForumUtil.java */
    /* loaded from: classes3.dex */
    private static class k extends ClickableSpan {

        /* renamed from: a  reason: collision with root package name */
        private int f27613a;

        /* renamed from: b  reason: collision with root package name */
        private int f27614b;

        /* renamed from: c  reason: collision with root package name */
        private String f27615c;

        public k() {
        }

        public int a() {
            return this.f27614b;
        }

        public String b() {
            return this.f27615c;
        }

        public int c() {
            return this.f27613a;
        }

        public void d(int i2) {
            this.f27614b = i2;
        }

        public void e(String str) {
            this.f27615c = str;
        }

        public void f(int i2) {
            this.f27613a = i2;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View view) {
            if (this.f27614b == 0) {
                IntentUtil.getInstance().goMainLabelActivity(view.getContext(), this.f27613a);
            } else {
                IntentUtil.getInstance().goMainLabelActivity(view.getContext(), this.f27613a, this.f27614b, this.f27615c);
            }
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            textPaint.setColor(textPaint.linkColor);
            textPaint.bgColor = Color.parseColor("#00000000");
            textPaint.setUnderlineText(false);
            textPaint.clearShadowLayer();
        }

        public k(int i2) {
            this.f27613a = i2;
        }
    }

    public static List<ForumBean> A(String str) {
        return (List) JsonMapper.getInstance().fromJson(str, JsonMapper.getInstance().createCollectionType(List.class, ForumBean.class));
    }

    public static void A0(Context context, ForumBean.ForumPostsBean forumPostsBean, ForumBean.ForumCommentBean forumCommentBean, ForumBean.ForumCommentReplyBean forumCommentReplyBean) {
        String json = JsonMapper.nonDefaultMapper().toJson(forumCommentBean);
        ((ForumProfileMessageReplyActivity_.q0) ((ForumProfileMessageReplyActivity_.q0) ((ForumProfileMessageReplyActivity_.q0) ((ForumProfileMessageReplyActivity_.q0) ForumProfileMessageReplyActivity_.M2(context).extra(ForumProfileMessageReplyActivity.S0, JsonMapper.nonDefaultMapper().toJson(forumCommentReplyBean))).extra(ForumProfileMessageReplyActivity.Q0, json)).extra(ForumProfileMessageReplyActivity.R0, JsonMapper.nonDefaultMapper().toJson(forumPostsBean))).flags(67108864)).startForResult(3);
    }

    public static void A1(TextView textView, SpannableStringBuilder spannableStringBuilder) {
        z1(textView, 3, spannableStringBuilder);
    }

    public static List<ForumBean.ForumExtBean> B(String str) {
        return (List) JsonMapper.getInstance().fromJson(str, JsonMapper.getInstance().createCollectionType(List.class, ForumBean.ForumExtBean.class));
    }

    public static void B0(Context context) {
        SearchHintActivity_.S1(context).a(1).start();
    }

    public static void B1(TextView textView, String str, String str2, String str3) {
        String string;
        Context context = textView.getContext();
        int[] iArr = new int[1];
        int[] iArr2 = new int[1];
        if (!str.equals("praise") && !str.equals("bestanswer") && !str.equals("best")) {
            if (str.equals("comment")) {
                string = context.getString(R.string.profile_message_item_content_comment, str3);
            } else if (str.equals("reply")) {
                string = context.getString(R.string.profile_message_item_content_reply, str2, str3);
                iArr[0] = string.indexOf(str2);
                iArr2[0] = iArr[0] + str2.length();
            } else {
                string = "";
            }
        } else {
            string = context.getString(R.string.profile_message_item_content_praise, str3);
        }
        SpannableString spannableString = new SpannableString(string);
        for (int i2 = 0; i2 < 1; i2++) {
            spannableString.setSpan(new ForegroundColorSpan(Color.parseColor("#2a72cb")), iArr[i2], iArr2[i2], 33);
        }
        if (string.contains("#*#")) {
            ImageSpan imageSpan = new ImageSpan(textView.getContext(), BitmapFactory.decodeResource(textView.getContext().getResources(), R.drawable.official_icon));
            String[] split = string.split("#\\*#");
            if (split.length > 1) {
                spannableString.setSpan(imageSpan, string.indexOf(split[0]) + split[0].length(), string.indexOf(split[0]) + split[0].length() + 3, 33);
                if (split.length > 2) {
                    spannableString.setSpan(new ImageSpan(textView.getContext(), BitmapFactory.decodeResource(textView.getContext().getResources(), R.drawable.official_icon)), string.indexOf(split[1]) + split[1].length(), string.indexOf(split[1]) + split[1].length() + 3, 33);
                }
            }
        }
        textView.setText(spannableString);
    }

    public static ForumBannerBean.ForumBannerMessagesData C(String str) {
        return (ForumBannerBean.ForumBannerMessagesData) JsonMapper.getInstance().fromJson(str, JsonMapper.getInstance().createCollectionType(ForumBannerBean.ForumBannerMessagesData.class, new Class[0]));
    }

    public static void C0(Context context, int i2) {
        SearchHintActivity_.S1(context).a(1).start();
    }

    public static void C1(ImageView imageView, int i2, List<String> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        imageView.setOnClickListener(new e(list, i2));
    }

    public static ForumData.ForumForumWelcomeData D(String str) {
        return (ForumData.ForumForumWelcomeData) JsonMapper.getInstance().fromJson(str, JsonMapper.getInstance().createCollectionType(ForumData.ForumForumWelcomeData.class, new Class[0]));
    }

    public static void D0(Context context, ForumBean.ForumTopicBean forumTopicBean) {
        ((ForumTopicActivity_.m) ((ForumTopicActivity_.m) ForumTopicActivity_.Q1(context).extra(ForumTopicActivity.f30781n0, JsonMapper.nonDefaultMapper().toJson(forumTopicBean))).flags(67108864)).start();
    }

    public static void D1(TextView textView, String str, String str2) {
        if (!d2.h(str) && !str.equals("null")) {
            textView.setText(str);
        } else {
            textView.setText(str2);
        }
    }

    public static ForumData.ForumForumWelcomePostsData E(String str) {
        return (ForumData.ForumForumWelcomePostsData) JsonMapper.getInstance().fromJson(str, JsonMapper.getInstance().createCollectionType(ForumData.ForumForumWelcomePostsData.class, new Class[0]));
    }

    public static void E0(Context context) {
        new Intent();
        new Bundle();
        ForumIndexActivity_.G0(context).start();
    }

    public static void E1(View view, IntentDateBean intentDateBean) {
        view.setOnClickListener(new b(intentDateBean));
    }

    public static ForumData.ForumPostsPraiseData F(String str) {
        return (ForumData.ForumPostsPraiseData) JsonMapper.getInstance().fromJson(str, JsonMapper.getInstance().createCollectionType(ForumData.ForumPostsPraiseData.class, new Class[0]));
    }

    public static void F0(Context context, String str) {
        HomePopupAdActivity_.K0(context).a(str).start();
    }

    public static void F1(View view, String str, String str2) {
        view.setOnClickListener(new a(str, str2));
    }

    public static ForumRequestBean.ForumPostsPraiseRequestBean G(String str) {
        return (ForumRequestBean.ForumPostsPraiseRequestBean) JsonMapper.getInstance().fromJson(str, ForumRequestBean.ForumPostsPraiseRequestBean.class);
    }

    public static void G0(Context context, int i2, String[] strArr) {
        Intent intent = new Intent(context, ImagePagerActivity.class);
        intent.putExtra("image_urls", strArr);
        intent.putExtra("image_index", i2);
        context.startActivity(intent);
    }

    public static void G1(Context context, int i2) {
        ShareBean shareBean = new ShareBean();
        shareBean.setTitle(com.join.android.app.mgsim.wufun.b.f17915i);
        shareBean.setText("最好用的联机模拟器");
        String str = com.join.mgps.rpc.g.f51527l + String.format("/forum/posts/share_detail?pid=%d&device_id=%s", Integer.valueOf(i2), v0.d(""));
        shareBean.setQqUrl(str);
        shareBean.setqZoneShareUrl(str);
        shareBean.setWechatFriendUrl(str);
        shareBean.setWechatShareUrl(str);
        shareBean.setWeiboShareUrl(str);
        shareBean.setFrom(4);
        shareBean.setGameId(i2 + "");
        r.r(context, shareBean);
    }

    public static ForumData.ForumProfilePostsData H(String str) {
        return (ForumData.ForumProfilePostsData) JsonMapper.getInstance().fromJson(str, JsonMapper.getInstance().createCollectionType(ForumData.ForumProfilePostsData.class, new Class[0]));
    }

    public static void H0(Context context, String str, String str2) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        if (d2.i(str2)) {
            intentDateBean.setObject(str2);
        }
        intentDateBean.setLink_type_val(str);
        IntentUtil.getInstance().intentActivity(context, intentDateBean);
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00ea  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void H1(android.content.Context r13, com.join.mgps.dto.ForumBean.ForumPostsBean r14) {
        /*
            Method dump skipped, instructions count: 352
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.Util.i0.H1(android.content.Context, com.join.mgps.dto.ForumBean$ForumPostsBean):void");
    }

    public static ForumData.ForumProfileUnreadMessageCountData I(String str) {
        return (ForumData.ForumProfileUnreadMessageCountData) JsonMapper.getInstance().fromJson(str, JsonMapper.getInstance().createCollectionType(ForumData.ForumProfileUnreadMessageCountData.class, new Class[0]));
    }

    public static void I0(Context context, ForumBean.GameInfo gameInfo) {
        IntentUtil.getInstance().goGameDetialActivity(context, gameInfo.getGame_id(), gameInfo.getGame_info_tpl_type(), gameInfo.getSp_tpl_two_position(), 0);
    }

    public static ForumData.ForumUserFavoritesDatas J(String str) {
        return (ForumData.ForumUserFavoritesDatas) JsonMapper.getInstance().fromJson(str, JsonMapper.getInstance().createCollectionType(ForumData.ForumUserFavoritesDatas.class, new Class[0]));
    }

    public static void J0(Context context, ForumBean.GameInfo gameInfo, int i2) {
        IntentUtil.getInstance().goGameDetialActivity(context, gameInfo.getGame_id(), gameInfo.getGame_info_tpl_type(), gameInfo.getSp_tpl_two_position(), i2);
    }

    public static ForumData.HomepageRecommendGroup K(String str) {
        return (ForumData.HomepageRecommendGroup) JsonMapper.getInstance().fromJson(str, JsonMapper.getInstance().createCollectionType(ForumData.HomepageRecommendGroup.class, new Class[0]));
    }

    public static void K0(Context context, AccountBean accountBean) {
        MYAccountDetialActivity_.r1(context).a(accountBean).start();
    }

    public static ForumData.HomepageRecommendLabel L(String str) {
        return (ForumData.HomepageRecommendLabel) JsonMapper.getInstance().fromJson(str, JsonMapper.getInstance().createCollectionType(ForumData.HomepageRecommendLabel.class, new Class[0]));
    }

    public static void L0(Context context) {
        IntentUtil.getInstance().goLogin(context);
    }

    public static void M(Context context, String str) {
        u0.e("copyToClickBoard method called.", "content=" + str);
        if (context == null) {
            return;
        }
        ((ClipboardManager) context.getSystemService("clipboard")).setText(str);
        i2.a(context).b("复制成功");
    }

    public static void M0(Context context) {
        LoginSplashActivity_.intent(context).start();
    }

    public static void N() {
        try {
            n1.t.p().delete((n1.t) n1.t.p().o(ForumBean.ForumEvent.MyProfileFavorites));
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static void N0(Context context, OemBean.OemDetailBean oemDetailBean) {
        Intent intent = new Intent(context, OemDetailActivity_.class);
        intent.putExtra(OemDetailActivity.H, JsonMapper.nonDefaultMapper().toJson(oemDetailBean));
        ((Activity) context).startActivityForResult(intent, 1);
    }

    public static void O(String str) {
        try {
            ForumTable forumTable = new ForumTable();
            forumTable.setType(ForumBean.ForumEvent.SearchListData.name());
            forumTable.setArgs1(str);
            n1.t.p().n(forumTable);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static void O0(Context context, ForumRequestBean.ForumPostsSubmitRequestBean forumPostsSubmitRequestBean, Class cls) {
        ((SharePostsActivity_.h) ((SharePostsActivity_.h) SharePostsActivity_.h1(context).extra(SharePostsActivity.A, JsonMapper.nonDefaultMapper().toJson(forumPostsSubmitRequestBean))).extra(SharePostsActivity.B, cls.getName())).start();
    }

    private static int P(TextPaint textPaint, CharSequence charSequence, int i2, int i4) {
        StaticLayout staticLayout = new StaticLayout(charSequence, textPaint, i4, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
        if (staticLayout.getLineCount() > i2) {
            int lineStart = staticLayout.getLineStart(i2 - 1);
            int[] iArr = {0};
            TextUtils.ellipsize(charSequence.subSequence(lineStart, charSequence.length()), textPaint, i4, TextUtils.TruncateAt.END, false, new c(iArr));
            return lineStart + iArr[0];
        }
        return -1;
    }

    public static void P0(Context context, String str) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        intentDateBean.setObject("悟饭视频");
        intentDateBean.setLink_type_val(str);
        IntentUtil.getInstance().intentActivity(context, intentDateBean);
    }

    public static void Q(TextView textView, SpannableStringBuilder spannableStringBuilder) {
        P(textView.getPaint(), spannableStringBuilder.toString(), 2, 1);
    }

    public static void Q0(Context context, String str) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        intentDateBean.setObject("悟饭视频");
        intentDateBean.setLink_type_val(str);
        IntentUtil.getInstance().intentActivity(context, intentDateBean);
    }

    public static String R(int i2) {
        if (i2 < 0) {
            return "0";
        }
        if (i2 < 1000) {
            return String.valueOf(i2);
        }
        if (i2 < 10000) {
            int i4 = i2 / 100;
            return String.valueOf(((i4 / 10) % 10) + g0.f27568a + (i4 % 10) + "K");
        } else if (i2 >= 100000) {
            if (i2 < 1000000) {
                return String.valueOf((i2 / 10000) + "W");
            }
            return "99W+";
        } else {
            int i5 = i2 / 1000;
            return String.valueOf(((i5 / 10) % 10) + g0.f27568a + (i5 % 10) + "W");
        }
    }

    public static void R0(Context context) {
        H0(context, "http://anv3cjapi.5fun.com/member/vip_view/welfare/nickname", null);
    }

    public static ImageSpan S(Drawable drawable) {
        return new com.join.mgps.customview.q0(drawable);
    }

    public static void S0(View... viewArr) {
        if (viewArr == null) {
            return;
        }
        f fVar = new f();
        for (View view : viewArr) {
            if (view != null) {
                view.setOnClickListener(fVar);
            }
        }
    }

    public static AccountBean T(Context context) {
        AccountBean accountData = AccountUtil_.getInstance_(context).getAccountData();
        if (accountData == null || !d2.i(accountData.getToken())) {
            return null;
        }
        return accountData;
    }

    public static void T0(Context context) {
        H0(context, "http://anv3cjapi.5fun.com/member/vip_view/welfare/vip", null);
    }

    public static ResponseDownloadCenterAd U() {
        try {
            String args2 = n1.t.p().o(ForumBean.ForumEvent.DownloadCenterAd).getArgs2();
            if (TextUtils.isEmpty(args2)) {
                return null;
            }
            return y(args2);
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static void U0(View... viewArr) {
    }

    public static ForumBannerBean.ForumBannerRequestBean V(Context context, int i2) {
        CommonRequestBean commuityRequestBean = RequestBeanUtil.getInstance(context).getCommuityRequestBean(i2);
        if (commuityRequestBean == null) {
            return null;
        }
        try {
            return new ForumBannerBean.ForumBannerRequestBean(commuityRequestBean.getVersion(), commuityRequestBean.getDeviceid(), commuityRequestBean.getRequesttype(), commuityRequestBean.getSign(), new ForumBannerBean.ForumBannerRequestBean.RequestMessages(commuityRequestBean.getMessages().getModeltype(), new ForumBannerBean.ForumBannerRequestBean.RequestMessagesArgs(Integer.valueOf(i2))));
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static void V0(Context context, String str, String str2) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        intentDateBean.setLink_type_val(str);
        if (!d2.i(str2)) {
            str2 = "悟饭视频";
        }
        intentDateBean.setObject(str2);
        IntentUtil.getInstance().intentActivity(context, intentDateBean);
    }

    public static ForumRequestBean.ForumCommentDeleteRequestBean W(Context context, int i2) {
        if (Y0(context)) {
            ForumRequestBean.ForumCommentDeleteRequestBean forumCommentDeleteRequestBean = new ForumRequestBean.ForumCommentDeleteRequestBean();
            forumCommentDeleteRequestBean.setPid(i2);
            forumCommentDeleteRequestBean.setUid(o0(context));
            forumCommentDeleteRequestBean.setToken(p0(context));
            return forumCommentDeleteRequestBean;
        }
        return null;
    }

    public static void W0(View... viewArr) {
        if (viewArr == null) {
            return;
        }
        g gVar = new g();
        for (View view : viewArr) {
            if (view != null) {
                view.setOnClickListener(gVar);
            }
        }
    }

    public static ForumRequestBean.ForumCommentReplyDeleteRequestBean X(Context context, int i2) {
        if (Y0(context)) {
            ForumRequestBean.ForumCommentReplyDeleteRequestBean forumCommentReplyDeleteRequestBean = new ForumRequestBean.ForumCommentReplyDeleteRequestBean();
            forumCommentReplyDeleteRequestBean.setRid(i2);
            forumCommentReplyDeleteRequestBean.setUid(o0(context));
            forumCommentReplyDeleteRequestBean.setToken(p0(context));
            return forumCommentReplyDeleteRequestBean;
        }
        return null;
    }

    public static void X0(View view) {
        if (view != null) {
            view.invalidate();
        }
    }

    public static ForumRequestBean.ForumCommentReplyRequestBean Y(Context context, int i2, String str, int i4) {
        if (Y0(context)) {
            ForumRequestBean.ForumCommentReplyRequestBean forumCommentReplyRequestBean = new ForumRequestBean.ForumCommentReplyRequestBean();
            forumCommentReplyRequestBean.setRid(i4);
            forumCommentReplyRequestBean.setPid(i2);
            forumCommentReplyRequestBean.setMessage(str);
            forumCommentReplyRequestBean.setUid(o0(context));
            forumCommentReplyRequestBean.setToken(p0(context));
            return forumCommentReplyRequestBean;
        }
        return null;
    }

    public static boolean Y0(Context context) {
        AccountBean accountData = AccountUtil_.getInstance_(context).getAccountData();
        return accountData != null && d2.i(accountData.getToken());
    }

    public static String Z() {
        return "forum_image";
    }

    public static void Z0(Context context) {
        Intent intent = new Intent();
        intent.setClass(context, MGMainActivity_.class);
        intent.setFlags(67108864);
        Bundle bundle = new Bundle();
        bundle.putInt("MainPos", 5);
        intent.putExtras(bundle);
        context.startActivity(intent);
        MApplication.f9221p = false;
    }

    public static ForumBannerBean.ForumBannerDataBannerBean a0() {
        try {
            String args2 = n1.t.p().o(ForumBean.ForumEvent.ForumIndexBanner).getArgs2();
            if (TextUtils.isEmpty(args2)) {
                return null;
            }
            return z(args2);
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static ForumRequestBean.ForumPostsCommentRequestBean b0(Context context, int i2, String str, List<String> list) {
        if (Y0(context)) {
            ForumRequestBean.ForumPostsCommentRequestBean forumPostsCommentRequestBean = new ForumRequestBean.ForumPostsCommentRequestBean();
            forumPostsCommentRequestBean.setPid(i2);
            forumPostsCommentRequestBean.setMessage(str);
            forumPostsCommentRequestBean.setUid(o0(context));
            forumPostsCommentRequestBean.setToken(p0(context));
            forumPostsCommentRequestBean.setImages(list);
            return forumPostsCommentRequestBean;
        }
        return null;
    }

    public static void c(List<ForumBean.GameInfo.GameTagInfo> list, LinearLayout linearLayout, Context context) {
        if (list == null) {
            return;
        }
        try {
            linearLayout.removeAllViews();
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.setMargins(4, 0, 4, 0);
            for (ForumBean.GameInfo.GameTagInfo gameTagInfo : list) {
                if (gameTagInfo.getId() != null && !gameTagInfo.getId().equals("") && !gameTagInfo.getId().equals("44") && !gameTagInfo.getId().equals("45") && !gameTagInfo.getId().equals("47") && !gameTagInfo.getId().equals("48")) {
                    TextView textView = new TextView(context);
                    textView.setLayoutParams(layoutParams);
                    textView.setGravity(17);
                    textView.setText(gameTagInfo.getName() + "");
                    textView.setTextColor(Color.parseColor(gameTagInfo.getColor()));
                    textView.setPadding(0, 0, 0, 0);
                    textView.setSingleLine(true);
                    textView.setTextSize(9.0f);
                    textView.setBackgroundDrawable(h2.a(context, gameTagInfo.getColor() + ""));
                    linearLayout.addView(textView);
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static ForumRequestBean.ForumPostsDeleteRequestBean c0(Context context, int i2) {
        if (Y0(context)) {
            ForumRequestBean.ForumPostsDeleteRequestBean forumPostsDeleteRequestBean = new ForumRequestBean.ForumPostsDeleteRequestBean();
            forumPostsDeleteRequestBean.setPid(i2);
            forumPostsDeleteRequestBean.setUid(o0(context));
            forumPostsDeleteRequestBean.setToken(p0(context));
            forumPostsDeleteRequestBean.setDevice_id("");
            return forumPostsDeleteRequestBean;
        }
        return null;
    }

    public static void d(TextView textView, SpannableStringBuilder spannableStringBuilder) {
        if (textView == null) {
            return;
        }
        try {
            Context context = textView.getContext();
            SpannableString spannableString = new SpannableString("已解答");
            spannableString.setSpan(new com.join.mgps.customview.q0(h2.c(context, "#737373", "#737373"), Color.parseColor("#ffffff")), 0, spannableString.length(), 33);
            spannableStringBuilder.append((CharSequence) spannableString).append(" ");
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static ForumRequestBean.ForumPostsHelpSolveRequestBean d0(Context context, int i2, int i4) {
        if (Y0(context)) {
            ForumRequestBean.ForumPostsHelpSolveRequestBean forumPostsHelpSolveRequestBean = new ForumRequestBean.ForumPostsHelpSolveRequestBean();
            forumPostsHelpSolveRequestBean.setPid(i2);
            forumPostsHelpSolveRequestBean.setRid(i4);
            forumPostsHelpSolveRequestBean.setUid(o0(context));
            forumPostsHelpSolveRequestBean.setToken(p0(context));
            forumPostsHelpSolveRequestBean.setDevice_id("");
            return forumPostsHelpSolveRequestBean;
        }
        return null;
    }

    public static void e(Context context, SpannableStringBuilder spannableStringBuilder, List<ForumBean.ForumPostsBean.TagInfo> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            try {
                ForumBean.ForumPostsBean.TagInfo tagInfo = list.get(i2);
                String name = tagInfo.getName();
                tagInfo.getColor();
                if (!d2.h(name)) {
                    SpannableString spannableString = new SpannableString(name);
                    spannableString.setSpan(new com.join.mgps.customview.q0(h2.b(context, tagInfo.getColor(), context.getResources().getDimensionPixelSize(R.dimen.wdp5)), Color.parseColor(TextUtils.isEmpty(tagInfo.getFont_color()) ? "#ffffff" : tagInfo.getFont_color())), 0, spannableString.length(), 33);
                    spannableStringBuilder.append((CharSequence) spannableString).append(" ");
                }
            } catch (Exception e4) {
                e4.printStackTrace();
                return;
            }
        }
    }

    public static ForumRequestBean.ForumPostsPraiseRequestBean e0(Context context, int i2) {
        if (Y0(context)) {
            ForumRequestBean.ForumPostsPraiseRequestBean forumPostsPraiseRequestBean = new ForumRequestBean.ForumPostsPraiseRequestBean();
            forumPostsPraiseRequestBean.setPid(i2);
            forumPostsPraiseRequestBean.setUid(o0(context));
            forumPostsPraiseRequestBean.setToken(p0(context));
            return forumPostsPraiseRequestBean;
        }
        return null;
    }

    private static void f(Context context, SpannableStringBuilder spannableStringBuilder, boolean z3, String str) {
        if (z3) {
            try {
                Drawable drawable = context.getResources().getDrawable(R.drawable.icon_ask);
                int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.mg_forum_post_message_text_size);
                drawable.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
                com.join.mgps.customview.r0 r0Var = new com.join.mgps.customview.r0(drawable, 1.2f);
                SpannableString spannableString = new SpannableString("[ask]");
                spannableString.setSpan(r0Var, 0, spannableString.length(), 33);
                SpannableString spannableString2 = new SpannableString("赏" + str + "铜板");
                spannableString2.setSpan(new com.join.mgps.customview.q0(h2.c(context, "#F85F45", "#F85F45"), Color.parseColor("#ffffff")), 0, spannableString2.length(), 33);
                spannableStringBuilder.append((CharSequence) spannableString2).append(" ");
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    public static ForumBannerBean.ForumBannerRequestBean f0(Context context, int i2) {
        CommonRequestBean commuityZoneRequestBean = RequestBeanUtil.getInstance(context).getCommuityZoneRequestBean(i2);
        if (commuityZoneRequestBean == null) {
            return null;
        }
        try {
            return new ForumBannerBean.ForumBannerRequestBean(commuityZoneRequestBean.getVersion(), commuityZoneRequestBean.getDeviceid(), commuityZoneRequestBean.getRequesttype(), commuityZoneRequestBean.getSign(), new ForumBannerBean.ForumBannerRequestBean.RequestMessages(commuityZoneRequestBean.getMessages().getModeltype(), new ForumBannerBean.ForumBannerRequestBean.RequestMessagesArgs(Integer.valueOf(i2))));
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static void f1(int i2, boolean z3) {
    }

    public static void g(TextView textView, SpannableStringBuilder spannableStringBuilder, boolean z3, boolean z4, String str) {
        if (textView == null) {
            return;
        }
        try {
            Context context = textView.getContext();
            float lineSpacingMultiplier = Build.VERSION.SDK_INT >= 16 ? textView.getLineSpacingMultiplier() : 1.2f;
            if (z4) {
                Drawable drawable = context.getResources().getDrawable(R.drawable.icon_ask);
                int textSize = (int) textView.getTextSize();
                drawable.setBounds(0, 0, textSize, textSize);
                com.join.mgps.customview.r0 r0Var = new com.join.mgps.customview.r0(drawable, lineSpacingMultiplier);
                SpannableString spannableString = new SpannableString("[ask]");
                spannableString.setSpan(r0Var, 0, spannableString.length(), 33);
                SpannableString spannableString2 = new SpannableString("赏" + str + "铜板");
                spannableString2.setSpan(new com.join.mgps.customview.q0(h2.c(context, "#F85F45", "#F85F45"), Color.parseColor("#ffffff")), 0, spannableString2.length(), 33);
                spannableStringBuilder.append((CharSequence) spannableString2).append(" ");
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static ForumData.HomepageRecommendGroup g0() {
        try {
            String args2 = n1.t.p().o(ForumBean.ForumEvent.HomepageRecommendGroup).getArgs2();
            if (TextUtils.isEmpty(args2)) {
                return null;
            }
            return K(args2);
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static void g1() {
        try {
            ForumTable o3 = n1.t.p().o(ForumBean.ForumEvent.ForumIndexBanner);
            if (o3 != null) {
                n1.t.p().delete((n1.t) o3);
            }
            ForumTable o4 = n1.t.p().o(ForumBean.ForumEvent.HomepageRecommendGroup);
            if (o3 != null) {
                n1.t.p().delete((n1.t) o4);
            }
            ForumTable o5 = n1.t.p().o(ForumBean.ForumEvent.HomepageRecommendLabel);
            if (o3 != null) {
                n1.t.p().delete((n1.t) o5);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static void h(Context context, SpannableStringBuilder spannableStringBuilder, List<ForumBean.ForumPostsBean.TagInfo> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            try {
                ForumBean.ForumPostsBean.TagInfo tagInfo = list.get(i2);
                String name = tagInfo.getName();
                tagInfo.getColor();
                if (!d2.h(name)) {
                    SpannableString spannableString = new SpannableString(name);
                    spannableString.setSpan(new com.join.mgps.customview.q0(h2.c(context, tagInfo.getColor(), tagInfo.getBorder_color()), Color.parseColor(TextUtils.isEmpty(tagInfo.getFont_color()) ? "#ffffff" : tagInfo.getFont_color())), 0, spannableString.length(), 33);
                    spannableStringBuilder.append((CharSequence) spannableString).append(" ");
                }
            } catch (Exception e4) {
                e4.printStackTrace();
                return;
            }
        }
    }

    public static ForumData.HomepageRecommendLabel h0() {
        try {
            String args2 = n1.t.p().o(ForumBean.ForumEvent.HomepageRecommendLabel).getArgs2();
            if (TextUtils.isEmpty(args2)) {
                return null;
            }
            return L(args2);
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static void h1(ForumData.ForumUserFavoritesData forumUserFavoritesData) {
        if (forumUserFavoritesData == null) {
            return;
        }
        try {
            ForumTable o3 = n1.t.p().o(ForumBean.ForumEvent.MyProfileFavorites);
            if (d2.h(o3.getArgs1())) {
                return;
            }
            ForumData.ForumUserFavoritesDatas J = J(o3.getArgs1());
            List<ForumData.ForumUserFavoritesData> favorites_list = J != null ? J.getFavorites_list() : null;
            if (favorites_list == null || favorites_list.size() == 0) {
                return;
            }
            for (ForumData.ForumUserFavoritesData forumUserFavoritesData2 : favorites_list) {
                if (forumUserFavoritesData2.getType() == forumUserFavoritesData.getType() && forumUserFavoritesData2.getGame() != null) {
                    if (forumUserFavoritesData.getType() == 1 && forumUserFavoritesData2.getGame() != null && forumUserFavoritesData.getGame() != null && forumUserFavoritesData2.getGame().getGame_id().equals(forumUserFavoritesData.getGame().getGame_id())) {
                        favorites_list.remove(forumUserFavoritesData2);
                        s1(J);
                        return;
                    } else if (forumUserFavoritesData.getType() == 2 && forumUserFavoritesData2.getPost() != null && forumUserFavoritesData.getPost() != null && forumUserFavoritesData2.getPost().getPid() == forumUserFavoritesData.getPost().getPid()) {
                        favorites_list.remove(forumUserFavoritesData2);
                        s1(J);
                        return;
                    }
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static void i(Context context, SpannableStringBuilder spannableStringBuilder, List<RecommendLabelTag> list, int i2, String str) {
        if (list == null || list.size() == 0) {
            return;
        }
        for (int i4 = 0; i4 < list.size(); i4++) {
            try {
                RecommendLabelTag recommendLabelTag = list.get(i4);
                String tag_name = recommendLabelTag.getTag_name();
                int tag_id = recommendLabelTag.getTag_id();
                if (!d2.h(tag_name)) {
                    SpannableString spannableString = new SpannableString("#" + tag_name + "#");
                    spannableString.setSpan(new ForegroundColorSpan(context.getResources().getColor(R.color.mg_forum_tag_color)), 0, spannableString.length(), 17);
                    k kVar = new k(tag_id);
                    kVar.d(i2);
                    kVar.e(str);
                    spannableString.setSpan(kVar, 0, spannableString.length(), 17);
                    spannableStringBuilder.append((CharSequence) spannableString).append(" ");
                }
            } catch (Exception e4) {
                e4.printStackTrace();
                return;
            }
        }
    }

    public static Integer[] i0(String str) {
        Integer[] numArr = null;
        try {
            if (d2.i(str)) {
                String f4 = d2.f(str);
                String[] split = f4.contains("_size_") ? f4.split("_size_") : null;
                String[] split2 = (split == null || split.length <= 1 || !split[1].contains("_")) ? null : split[1].split("_");
                if (split2 == null || split2.length <= 1 || !d2.i(split2[0]) || !d2.i(split2[1])) {
                    return null;
                }
                numArr = new Integer[]{Integer.valueOf(Integer.parseInt(split2[0])), Integer.valueOf(Integer.parseInt(split2[1]))};
                return numArr;
            }
            return null;
        } catch (Exception e4) {
            e4.printStackTrace();
            return numArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"NewApi"})
    public static void i1(ViewTreeObserver viewTreeObserver, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        if (viewTreeObserver == null) {
            return;
        }
        if (Build.VERSION.SDK_INT < 16) {
            viewTreeObserver.removeGlobalOnLayoutListener(onGlobalLayoutListener);
        } else {
            viewTreeObserver.removeOnGlobalLayoutListener(onGlobalLayoutListener);
        }
    }

    public static void j(int i2, boolean z3, List<ForumBean.ForumPostsBean> list) {
        for (int i4 = 0; list != null && i4 < list.size(); i4++) {
            ForumBean.ForumPostsBean forumPostsBean = list.get(i4);
            if (forumPostsBean.getPid() == i2) {
                forumPostsBean.setIs_favorite(z3);
                return;
            }
        }
    }

    public static IntentDateBean j0(BannerBean bannerBean) {
        if (bannerBean == null) {
            return null;
        }
        return new IntentDateBean(bannerBean.getLink_type(), bannerBean.getJump_type(), bannerBean.getLink_type_val(), bannerBean.getCrc_link_type_val(), bannerBean.getTpl_type(), bannerBean.getTitle());
    }

    public static void k(int i2, boolean z3, List<ForumData.ForumUserFavoritesData> list) {
        for (int i4 = 0; list != null && i4 < list.size(); i4++) {
            ForumData.ForumUserFavoritesData forumUserFavoritesData = list.get(i4);
            if (forumUserFavoritesData.getPost() != null && forumUserFavoritesData.getPost().getPid() == i2) {
                forumUserFavoritesData.getPost().setIs_favorite(z3);
                if (z3) {
                    return;
                }
                h1(forumUserFavoritesData);
                return;
            }
        }
    }

    public static IntentDateBean k0(ForumBannerBean.ForumBannerDataBannerCellBean forumBannerDataBannerCellBean) {
        if (forumBannerDataBannerCellBean == null) {
            return null;
        }
        return new IntentDateBean(!TextUtils.isEmpty(forumBannerDataBannerCellBean.getLink_type()) ? Integer.parseInt(forumBannerDataBannerCellBean.getLink_type()) : 0, !TextUtils.isEmpty(forumBannerDataBannerCellBean.getJump_type()) ? Integer.parseInt(forumBannerDataBannerCellBean.getJump_type()) : 0, forumBannerDataBannerCellBean.getLink_type_val(), forumBannerDataBannerCellBean.getCrc_link_type_val(), forumBannerDataBannerCellBean.getTpl_type(), forumBannerDataBannerCellBean.getTitle());
    }

    public static void k1(ResponseDownloadCenterAd responseDownloadCenterAd) {
        try {
            String json = JsonMapper.nonDefaultMapper().toJson(responseDownloadCenterAd);
            ForumTable forumTable = new ForumTable();
            forumTable.setType(ForumBean.ForumEvent.DownloadCenterAd.name());
            forumTable.setArgs1("");
            forumTable.setArgs2(json);
            forumTable.setTime(String.valueOf(System.currentTimeMillis() / 1000));
            n1.t.p().u(forumTable);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static int l(Context context, int i2) {
        if (i2 == 701) {
            i2.a(context).b("登录验证失败，请重新登录");
            L0(context);
        }
        return i2;
    }

    public static File l0() {
        File externalStorageDirectory = Environment.getExternalStorageDirectory();
        File file = new File(externalStorageDirectory, "MG/.cache/" + Z());
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public static void l1(ForumBannerBean.ForumBannerDataBannerBean forumBannerDataBannerBean) {
        try {
            String m4 = m(forumBannerDataBannerBean);
            ForumTable forumTable = new ForumTable();
            forumTable.setType(ForumBean.ForumEvent.ForumIndexBanner.name());
            forumTable.setArgs1("");
            forumTable.setArgs2(m4);
            forumTable.setTime(String.valueOf(System.currentTimeMillis() / 1000));
            n1.t.p().u(forumTable);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static String m(ForumBannerBean.ForumBannerDataBannerBean forumBannerDataBannerBean) {
        return JsonMapper.nonDefaultMapper().toJson(forumBannerDataBannerBean);
    }

    public static SpannableStringBuilder m0(Context context, String str, boolean z3, boolean z4, String str2, List<ForumBean.ForumPostsBean.TagInfo> list) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        if (z3) {
            h(context, spannableStringBuilder, list);
            f(context, spannableStringBuilder, z4, str2);
        }
        spannableStringBuilder.append((CharSequence) str);
        return spannableStringBuilder;
    }

    public static void m1(ForumRequestBean.ForumPostsPraiseRequestBean forumPostsPraiseRequestBean, ForumData.ForumPostsPraiseData forumPostsPraiseData) {
        String w3 = w(forumPostsPraiseRequestBean);
        String r3 = r(forumPostsPraiseData);
        ForumTable forumTable = new ForumTable();
        forumTable.setType(ForumBean.ForumEvent.PostsPraise.name());
        forumTable.setArgs1(w3);
        forumTable.setArgs1(r3);
        forumTable.setTime(String.valueOf(System.currentTimeMillis() / 1000));
        n1.t.p().u(forumTable);
    }

    public static String n(ForumBannerBean.ForumBannerMessagesData forumBannerMessagesData) {
        return JsonMapper.nonDefaultMapper().toJson(forumBannerMessagesData);
    }

    public static String n0(String str) {
        try {
            ForumTable forumTable = new ForumTable();
            forumTable.setType(ForumBean.ForumEvent.SearchListData.name());
            forumTable.setArgs1(str);
            ForumTable q3 = n1.t.p().q(forumTable);
            return q3 != null ? q3.getArgs2() : "";
        } catch (Exception e4) {
            e4.printStackTrace();
            return "";
        }
    }

    public static void n1(ForumData.ForumProfilePostsData forumProfilePostsData) {
        String s3 = s(forumProfilePostsData);
        ForumTable forumTable = new ForumTable();
        forumTable.setType(ForumBean.ForumEvent.ProfilePosts.name());
        forumTable.setArgs1(s3);
        forumTable.setTime(String.valueOf(System.currentTimeMillis() / 1000));
        n1.t.p().u(forumTable);
    }

    public static String o(ForumBean forumBean) {
        return JsonMapper.nonDefaultMapper().toJson(forumBean);
    }

    public static int o0(Context context) {
        AccountBean accountData = AccountUtil_.getInstance_(context).getAccountData();
        if (accountData == null || !d2.i(accountData.getToken())) {
            return -1;
        }
        return accountData.getUid();
    }

    public static void o1(ForumData.ForumProfileUnreadMessageCountData forumProfileUnreadMessageCountData) {
        String t3 = t(forumProfileUnreadMessageCountData);
        ForumTable forumTable = new ForumTable();
        forumTable.setType(ForumBean.ForumEvent.ProfileGetUnreadMessageCount.name());
        forumTable.setArgs1(t3);
        forumTable.setTime(String.valueOf(System.currentTimeMillis() / 1000));
        n1.t.p().u(forumTable);
    }

    public static String p(ForumData.ForumForumWelcomeData forumForumWelcomeData) {
        return JsonMapper.nonDefaultMapper().toJson(forumForumWelcomeData);
    }

    public static String p0(Context context) {
        AccountBean accountData = AccountUtil_.getInstance_(context).getAccountData();
        return (accountData == null || !d2.i(accountData.getToken())) ? "" : accountData.getToken();
    }

    public static void p1(ForumData.ForumForumWelcomePostsData forumForumWelcomePostsData) {
        String q3 = q(forumForumWelcomePostsData);
        ForumTable forumTable = new ForumTable();
        forumTable.setType(ForumBean.ForumEvent.ForumWelcomePosts.name());
        forumTable.setArgs1(q3);
        forumTable.setTime(String.valueOf(System.currentTimeMillis() / 1000));
        n1.t.p().l(forumTable);
    }

    public static String q(ForumData.ForumForumWelcomePostsData forumForumWelcomePostsData) {
        return JsonMapper.nonDefaultMapper().toJson(forumForumWelcomePostsData);
    }

    public static void q0(Context context, String str, String str2) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(2);
        if (d2.i(str)) {
            intentDateBean.setTpl_type(str);
        } else {
            intentDateBean.setTpl_type(PayCenterOrderRequest.PAY_TYPE_RECHARGE);
        }
        intentDateBean.setCrc_link_type_val(str2);
        intentDateBean.setExtBean(null);
        IntentUtil.getInstance().intentActivity(context, intentDateBean);
    }

    public static void q1(ForumData.HomepageRecommendGroup homepageRecommendGroup) {
        try {
            String v3 = v(homepageRecommendGroup);
            ForumTable forumTable = new ForumTable();
            forumTable.setType(ForumBean.ForumEvent.HomepageRecommendGroup.name());
            forumTable.setArgs1("");
            forumTable.setArgs2(v3);
            forumTable.setTime(String.valueOf(System.currentTimeMillis() / 1000));
            n1.t.p().u(forumTable);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static String r(ForumData.ForumPostsPraiseData forumPostsPraiseData) {
        return JsonMapper.nonDefaultMapper().toJson(forumPostsPraiseData);
    }

    public static void r0(Context context, ForumBean forumBean) {
        IntentUtil.getInstance().goForumGroupActivity(context, forumBean.getFid());
    }

    public static void r1(ForumData.HomepageRecommendLabel homepageRecommendLabel) {
        try {
            String json = JsonMapper.nonDefaultMapper().toJson(homepageRecommendLabel);
            ForumTable forumTable = new ForumTable();
            forumTable.setType(ForumBean.ForumEvent.HomepageRecommendLabel.name());
            forumTable.setArgs1("");
            forumTable.setArgs2(json);
            forumTable.setTime(String.valueOf(System.currentTimeMillis() / 1000));
            n1.t.p().u(forumTable);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static String s(ForumData.ForumProfilePostsData forumProfilePostsData) {
        return JsonMapper.nonDefaultMapper().toJson(forumProfilePostsData);
    }

    public static void s0(Context context, ForumBean forumBean, ExtBean extBean) {
        IntentUtil.getInstance().goForumGroupActivity(context, forumBean.getFid());
    }

    public static void s1(ForumData.ForumUserFavoritesDatas forumUserFavoritesDatas) {
        try {
            String u3 = u(forumUserFavoritesDatas);
            ForumTable forumTable = new ForumTable();
            forumTable.setType(ForumBean.ForumEvent.MyProfileFavorites.name());
            forumTable.setArgs1("");
            forumTable.setArgs1(u3);
            forumTable.setTime(String.valueOf(System.currentTimeMillis() / 1000));
            n1.t.p().u(forumTable);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static String t(ForumData.ForumProfileUnreadMessageCountData forumProfileUnreadMessageCountData) {
        return JsonMapper.nonDefaultMapper().toJson(forumProfileUnreadMessageCountData);
    }

    public static void t0(Context context, ForumBean forumBean, List<ForumBean> list) {
        IntentUtil.getInstance().goForumGroupActivity(context, forumBean.getFid());
    }

    public static void t1(String str, String str2) {
        try {
            ForumTable forumTable = new ForumTable();
            forumTable.setType(ForumBean.ForumEvent.SearchListData.name());
            forumTable.setArgs1(str);
            forumTable.setArgs2(str2);
            forumTable.setTime(String.valueOf(System.currentTimeMillis() / 1000));
            n1.t.p().t(forumTable);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static String u(ForumData.ForumUserFavoritesDatas forumUserFavoritesDatas) {
        return JsonMapper.nonDefaultMapper().toJson(forumUserFavoritesDatas);
    }

    public static void u0(Context context, ForumBean forumBean, boolean z3) {
        IntentUtil.getInstance().goForumGroupActivity(context, forumBean.getFid());
    }

    public static void u1(TextView textView, String str, String str2, String str3) {
        String string;
        Context context = textView.getContext();
        textView.setGravity(16);
        int[] iArr = new int[1];
        int[] iArr2 = new int[1];
        if (d2.i(str2)) {
            string = context.getString(R.string.comment_item_content_2, str, str2, str3);
            iArr = new int[]{string.indexOf(str), iArr2[0] + string.substring(iArr2[0]).indexOf(str2)};
            iArr2 = new int[]{iArr[0] + str.length(), iArr[1] + str2.length()};
        } else {
            string = context.getString(R.string.comment_item_content_1, str, str3);
            iArr[0] = string.indexOf(str);
            iArr2[0] = iArr[0] + str.length();
        }
        SpannableString spannableString = new SpannableString(string);
        for (int i2 = 0; i2 < iArr.length; i2++) {
            spannableString.setSpan(new ForegroundColorSpan(Color.parseColor("#2a72cb")), iArr[i2], iArr2[i2], 33);
        }
        if (string.contains("#*#")) {
            ImageSpan imageSpan = new ImageSpan(textView.getContext(), BitmapFactory.decodeResource(textView.getContext().getResources(), R.drawable.official_icon));
            String[] split = string.split("#\\*#");
            if (split.length > 1) {
                spannableString.setSpan(imageSpan, split[0].length(), split[0].length() + 3, 33);
                if (split.length > 2) {
                    spannableString.setSpan(new ImageSpan(textView.getContext(), BitmapFactory.decodeResource(textView.getContext().getResources(), R.drawable.official_icon)), string.indexOf(split[1]) + split[1].length(), string.indexOf(split[1]) + split[1].length() + 3, 33);
                }
            }
        }
        textView.setText(spannableString);
    }

    public static String v(ForumData.HomepageRecommendGroup homepageRecommendGroup) {
        return JsonMapper.nonDefaultMapper().toJson(homepageRecommendGroup);
    }

    public static void v0(Context context, ForumBean.ForumPostsBean forumPostsBean) {
        ((ForumPostsActivity_.j1) ForumPostsActivity_.z4(context).extra(ForumPostsActivity.f30025k2, JsonMapper.getInstance().toJson(forumPostsBean))).startForResult(3);
    }

    public static void v1(TextView textView, String str, int i2, int i4, String str2, int i5, int i6, String str3) {
        String string;
        Context context = textView.getContext();
        textView.setGravity(16);
        int[] iArr = new int[1];
        int[] iArr2 = new int[1];
        if (d2.i(str2)) {
            string = context.getString(R.string.comment_item_content_2, str, str2, str3);
            iArr = new int[]{string.indexOf(str), iArr2[0] + string.substring(iArr2[0]).indexOf(str2)};
            iArr2 = new int[]{iArr[0] + str.length(), iArr[1] + str2.length()};
        } else {
            string = context.getString(R.string.comment_item_content_1, str, str3);
            iArr[0] = string.indexOf(str);
            iArr2[0] = iArr[0] + str.length();
        }
        SpannableString spannableString = new SpannableString(string);
        for (int i7 = 0; i7 < iArr.length; i7++) {
            int parseColor = Color.parseColor("#2a72cb");
            if (i7 == 0) {
                if (i2 > 0) {
                    parseColor = Color.parseColor("#ff0000");
                }
                if (i4 > 0) {
                    parseColor = Color.parseColor("#f6c004");
                }
            } else {
                if (i5 > 0) {
                    parseColor = Color.parseColor("#ff0000");
                }
                if (i6 > 0) {
                    parseColor = Color.parseColor("#f6c004");
                }
            }
            spannableString.setSpan(new ForegroundColorSpan(parseColor), iArr[i7], iArr2[i7], 33);
        }
        if (string.contains("#*#")) {
            ImageSpan imageSpan = new ImageSpan(textView.getContext(), BitmapFactory.decodeResource(textView.getContext().getResources(), R.drawable.official_icon));
            String[] split = string.split("#\\*#");
            if (split.length > 1) {
                spannableString.setSpan(imageSpan, split[0].length(), split[0].length() + 3, 33);
                if (split.length > 2) {
                    spannableString.setSpan(new ImageSpan(textView.getContext(), BitmapFactory.decodeResource(textView.getContext().getResources(), R.drawable.official_icon)), string.indexOf(split[1]) + split[1].length(), string.indexOf(split[1]) + split[1].length() + 3, 33);
                }
            }
        }
        textView.setText(spannableString);
    }

    public static String w(ForumRequestBean.ForumPostsPraiseRequestBean forumPostsPraiseRequestBean) {
        return JsonMapper.nonDefaultMapper().toJson(forumPostsPraiseRequestBean);
    }

    public static void w0(Context context, ForumBean.ForumPostsBean forumPostsBean, ExtBean extBean) {
        ((ForumPostsActivity_.j1) ForumPostsActivity_.z4(context).extra(ForumPostsActivity.f30025k2, JsonMapper.nonDefaultMapper().toJson(forumPostsBean))).a(extBean).startForResult(3);
    }

    public static void w1(TextView textView, String str, boolean z3, boolean z4, String str2, List<ForumBean.ForumPostsBean.TagInfo> list) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        h(textView.getContext(), spannableStringBuilder, list);
        g(textView, spannableStringBuilder, z3, z4, str2);
        spannableStringBuilder.append((CharSequence) str);
        textView.setText(spannableStringBuilder);
    }

    public static String x(List<ForumBean> list) {
        return JsonMapper.nonDefaultMapper().toJson(list);
    }

    public static void x0(Context context) {
        ForumProfileCommentActivity_.d1(context).start();
    }

    public static void x1(ListView listView, int i2) {
        ViewGroup.LayoutParams layoutParams = listView.getLayoutParams();
        layoutParams.height = i2;
        listView.setLayoutParams(layoutParams);
    }

    public static ResponseDownloadCenterAd y(String str) {
        return (ResponseDownloadCenterAd) JsonMapper.getInstance().fromJson(str, JsonMapper.getInstance().createCollectionType(ResponseDownloadCenterAd.class, new Class[0]));
    }

    public static void y0(Context context) {
        ForumProfileFavoritesActivity_.u2(context).start();
    }

    public static void y1(ListView listView) {
        ListAdapter adapter;
        if (listView == null || (adapter = listView.getAdapter()) == null || adapter.getCount() == 0) {
            return;
        }
        int i2 = 0;
        for (int i4 = 0; i4 < adapter.getCount(); i4++) {
            View view = adapter.getView(i4, null, listView);
            view.measure(0, 0);
            i2 += view.getMeasuredHeight();
        }
        x1(listView, i2 + (listView.getDividerHeight() * (adapter.getCount() - 1)));
    }

    public static ForumBannerBean.ForumBannerDataBannerBean z(String str) {
        return (ForumBannerBean.ForumBannerDataBannerBean) JsonMapper.getInstance().fromJson(str, JsonMapper.getInstance().createCollectionType(ForumBannerBean.ForumBannerDataBannerBean.class, new Class[0]));
    }

    public static void z0(Context context) {
        ForumProfileMessageActivity_.e1(context).start();
    }

    public static void z1(TextView textView, int i2, SpannableStringBuilder spannableStringBuilder) {
        textView.getViewTreeObserver().addOnGlobalLayoutListener(new d(textView, spannableStringBuilder, i2));
    }

    public void a1(List<ForumBean> list) {
        LinkedList<j> linkedList = this.f27602a;
        if (linkedList == null) {
            return;
        }
        Iterator<j> it2 = linkedList.iterator();
        while (it2.hasNext()) {
            it2.next().a(list);
        }
    }

    public void b(j jVar) {
        if (this.f27602a == null) {
            this.f27602a = new LinkedList<>();
        }
        if (this.f27602a.contains(jVar)) {
            return;
        }
        this.f27602a.add(jVar);
    }

    public void b1(int i2) {
        LinkedList<j> linkedList = this.f27602a;
        if (linkedList == null) {
            return;
        }
        Iterator<j> it2 = linkedList.iterator();
        while (it2.hasNext()) {
            it2.next().b(i2);
        }
    }

    public void c1(ForumBean.ForumProfilePostUserInfoBean forumProfilePostUserInfoBean) {
        LinkedList<j> linkedList = this.f27602a;
        if (linkedList == null) {
            return;
        }
        Iterator<j> it2 = linkedList.iterator();
        while (it2.hasNext()) {
            it2.next().c(forumProfilePostUserInfoBean);
        }
    }

    public void d1(int i2) {
        LinkedList<j> linkedList = this.f27602a;
        if (linkedList == null) {
            return;
        }
        Iterator<j> it2 = linkedList.iterator();
        while (it2.hasNext()) {
            it2.next().d(i2);
        }
    }

    public void e1(ForumData.ForumPostsSubmitData forumPostsSubmitData) {
        LinkedList<j> linkedList = this.f27602a;
        if (linkedList == null) {
            return;
        }
        Iterator<j> it2 = linkedList.iterator();
        while (it2.hasNext()) {
            it2.next().e(forumPostsSubmitData);
        }
    }

    public void j1(j jVar) {
        LinkedList<j> linkedList = this.f27602a;
        if (linkedList == null) {
            return;
        }
        linkedList.remove(jVar);
    }
}
