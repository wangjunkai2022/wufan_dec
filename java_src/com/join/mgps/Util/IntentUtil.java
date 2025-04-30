package com.join.mgps.Util;

import android.app.Activity;
import android.bluetooth.BluetoothAdapter;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.MApplication;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.AccountCenterNewActivity_;
import com.join.mgps.activity.BuildQRCodeActivity_;
import com.join.mgps.activity.CollectionCommentActivity_;
import com.join.mgps.activity.CommentDetailActivity_;
import com.join.mgps.activity.CommentSelfListActivityv2_;
import com.join.mgps.activity.DownloadSettingActivity_;
import com.join.mgps.activity.FaceTransferHomePageActivity_;
import com.join.mgps.activity.ForumActivity_;
import com.join.mgps.activity.ForumGroupMemberActivity_;
import com.join.mgps.activity.ForumMyActivity_;
import com.join.mgps.activity.ForumMyPostsActivity_;
import com.join.mgps.activity.ForumPostsTagSelectActivity_;
import com.join.mgps.activity.ForumProfileCommentActivity_;
import com.join.mgps.activity.ForumProfileFavoritesActivity_;
import com.join.mgps.activity.GameAndProfileActivity_;
import com.join.mgps.activity.GameMainActivity3_;
import com.join.mgps.activity.HandShankNoActivity_;
import com.join.mgps.activity.HandShankOverActivity_;
import com.join.mgps.activity.HandShankYesActivity_;
import com.join.mgps.activity.MGMainActivity;
import com.join.mgps.activity.MGMainActivity_;
import com.join.mgps.activity.MGSettingActivity_;
import com.join.mgps.activity.MYAccountDetialActivity_;
import com.join.mgps.activity.MyGameManagerActivity_;
import com.join.mgps.activity.PAPayCenterActivity_;
import com.join.mgps.activity.SearchHintActivity_;
import com.join.mgps.activity.SearchListActivity1_;
import com.join.mgps.activity.ShareWebActivity_;
import com.join.mgps.activity.TagGameListActivity_;
import com.join.mgps.activity.VoucherCodesBoxActivity_;
import com.join.mgps.activity.label.MainLabelActivity_;
import com.join.mgps.activity.login.ChangeAccountNickNameActivity_;
import com.join.mgps.activity.login.LoginCfgsBean;
import com.join.mgps.activity.login.LoginSplashActivity_;
import com.join.mgps.activity.message.MessageMainActivity_;
import com.join.mgps.adapter.FullScreenActivity;
import com.join.mgps.adapter.FullScreenActivity_;
import com.join.mgps.db.tables.HandShankTable;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.pref.PrefDef_;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class IntentUtil {
    private static IntentUtil ourInstance;
    private DownloadTask downloadTask;
    private String gameid;
    private Intent intent2;
    private Activity splashActivity;

    private IntentUtil() {
    }

    private AccountBean accountBean(Context context) {
        return AccountUtil_.getInstance_(context).getAccountData();
    }

    public static IntentUtil getInstance() {
        if (ourInstance == null) {
            ourInstance = new IntentUtil();
        }
        return ourInstance;
    }

    private void showUserNotLogin(Context context) {
        i2.a(context).b(context.getResources().getString(R.string.forum_user_not_login));
    }

    public void checkRealNameAndIntent(Context context, AccountBean accountBean, String str, String str2) {
        if (!d2.i(str2) || startGameCheckRealnameHasIntent(context, accountBean, str, str2)) {
            return;
        }
        UtilsMy.f3(context, g1.f.G().B(str2), "login");
    }

    public Activity getSplashActivity() {
        return this.splashActivity;
    }

    public void goAccountCenterActivity(Context context) {
        AccountCenterNewActivity_.D0(context).start();
    }

    public void goAccountUpgradeActivity(Context context) {
        goMyAccountLoginActivity(context);
    }

    public void goBrowser(Context context, String str) {
        Intent intent = new Intent();
        intent.setAction("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        context.startActivity(intent);
    }

    public void goBuildQRCodeActivity(Context context) {
        BuildQRCodeActivity_.X0(context).start();
    }

    public void goChangeNickname(Context context) {
        ChangeAccountNickNameActivity_.intent(context).start();
    }

    public void goCheckIn(Context context) {
        if (goLoginInteractive(context)) {
            return;
        }
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        intentDateBean.setObject("签到");
        intentDateBean.setLink_type_val(com.join.mgps.rpc.g.M0);
        getInstance().intentActivity(context, intentDateBean);
    }

    public void goCodesBoxActivity(Context context) {
        AccountBean accountBean = accountBean(context);
        if (goLoginNetGame(context)) {
            return;
        }
        VoucherCodesBoxActivity_.G0(context).b(0).a(accountBean.getUid()).start();
    }

    public void goCollectionCommentActivity(Context context, String str) {
        CollectionCommentActivity_.m1(context).b(str).start();
    }

    public void goColloctionList(Context context, String str, String str2) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(2);
        intentDateBean.setTpl_type(str);
        intentDateBean.setCrc_link_type_val(str2);
        getInstance().intentActivity(context, intentDateBean);
    }

    public void goCommentDetailActivity(Context context, String str, String str2, String str3) {
        CommentDetailActivity_.k2(context).b(str).f("green").e(1).d(str2).c(str3).start();
    }

    public void goCommentSelfListActivity(Context context) {
        if (goLogin(context)) {
            return;
        }
        CommentSelfListActivityv2_.f1(context).start();
    }

    public void goDownloadCenterActivity(Context context) {
        getInstance().goMyGameManagerActivity(context);
    }

    public void goDownloadSettingActivity(Context context) {
        DownloadSettingActivity_.Z0(context).start();
    }

    public void goFaceTransferHomePageActivity(Context context) {
        FaceTransferHomePageActivity_.R0(context).start();
    }

    public void goFeedback(Context context) {
        if (goLogin(context)) {
            return;
        }
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        intentDateBean.setObject(context.getString(R.string.papa_feedback));
        intentDateBean.setLink_type_val(com.join.mgps.rpc.g.f51563x + "/papa_help");
        getInstance().intentActivity(context, intentDateBean);
    }

    public void goFormDetial(Context context, String str) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(8);
        intentDateBean.setLink_type_val(str);
        intentActivity(context, intentDateBean);
    }

    public void goForumAndPrfileActivity(int i2, Context context) {
        if (goLogin(context)) {
            return;
        }
        Intent intent = new Intent(context, GameAndProfileActivity_.class);
        intent.putExtra("type", i2);
        context.startActivity(intent);
    }

    public void goForumFid(Context context, int i2) {
        try {
            ForumBean forumBean = new ForumBean();
            forumBean.setFid(i2);
            i0.r0(context, forumBean);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void goForumGroupActivity(Context context, int i2) {
        ((ForumActivity_.q) ForumActivity_.s1(context).a(i2).flags(67108864)).start();
    }

    public void goForumGroupMemberActivity(Context context, int i2) {
        ((ForumGroupMemberActivity_.j) ForumGroupMemberActivity_.Z0(context).a(i2).flags(67108864)).start();
    }

    public void goForumMyDynamicActivity(Context context) {
        if (goLogin(context)) {
            return;
        }
        ForumMyActivity_.S0(context).start();
    }

    public void goForumMyPostsActivity(Context context) {
        if (goLoginInteractive(context)) {
            return;
        }
        ForumMyPostsActivity_.t1(context).start();
    }

    public void goForumPostsTagSelectActivity(Context context, int i2, int i4, String str, int i5) {
        ((ForumPostsTagSelectActivity_.i) ForumPostsTagSelectActivity_.U0(context).a(i2).b(i4).extra("selectedTags", str)).c(i5).startForResult(10001);
    }

    public void goForumProfileCommentActivity(Context context) {
        if (goLoginInteractive(context)) {
            return;
        }
        ForumProfileCommentActivity_.d1(context).start();
    }

    public void goForumProfileFavoritesActivity(Context context) {
        if (goLogin(context)) {
            return;
        }
        ForumProfileFavoritesActivity_.u2(context).start();
    }

    public void goForumProfileMessageActivity(Context context) {
        if (goLogin(context)) {
            return;
        }
        MessageMainActivity_.I0(context).start();
    }

    public void goFullScrVideoPlayer(Context context, String str, String str2) {
        FullScreenActivity.VideoInfo videoInfo = new FullScreenActivity.VideoInfo();
        videoInfo.n(str2);
        FullScreenActivity_.G0(context).a(videoInfo).start();
    }

    public void goGameDetialActivity(Context context, String str, String str2, int i2, int i4) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(1);
        intentDateBean.setCrc_link_type_val(str);
        intentDateBean.setTpl_type(str2);
        intentDateBean.setJump_type(i2);
        ExtBean extBean = new ExtBean();
        extBean.set_from_type(i4);
        intentDateBean.setExtBean(extBean);
        intentActivity(context, intentDateBean);
    }

    public void goGameDetialActivityBYDownloadTAsk(Context context, DownloadTask downloadTask) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(1);
        intentDateBean.setCrc_link_type_val(downloadTask.getCrc_link_type_val());
        intentDateBean.setTpl_type(downloadTask.getGame_info_tpl_type());
        intentDateBean.setJump_type(downloadTask.getSp_tpl_two_position());
        intentDateBean.setExtBean(new ExtBean(downloadTask.get_from_type()));
        intentActivity(context, intentDateBean);
    }

    public void goGameMainActivity(Context context, String str, String str2) {
        ((GameMainActivity3_.i0) GameMainActivity3_.k3(context).b(str).a(str2).flags(67108864)).start();
    }

    public void goJoystickManager(Context context) {
        if (Build.VERSION.SDK_INT < 15) {
            i2.a(context).b("你的手机暂不支持");
        } else if (BluetoothAdapter.getDefaultAdapter() == null) {
            ((HandShankOverActivity_.b) HandShankOverActivity_.F0(context).flags(67108864)).start();
        } else {
            List<HandShankTable> o3 = n1.x.p().o();
            if (o3 != null && o3.size() != 0) {
                ((HandShankYesActivity_.g) HandShankYesActivity_.m1(context).flags(67108864)).start();
            } else {
                ((HandShankNoActivity_.f) HandShankNoActivity_.g1(context).flags(67108864)).start();
            }
        }
    }

    public void goLabelGroupActivity(Context context, String str) {
        IntentUtil intentUtil = getInstance();
        intentUtil.goShareWebActivity(context, com.join.mgps.rpc.g.f51527l + "/group/posts/forum_tags/tagSquare?fid=" + str);
    }

    public boolean goLogin(Context context) {
        return goLogin(context, 1);
    }

    public boolean goLoginBattle(Context context) {
        return goLogin(context, 2);
    }

    public boolean goLoginInteractive(Context context) {
        return goLogin(context, 3);
    }

    public boolean goLoginNetGame(Context context) {
        return goLogin(context, 4);
    }

    public void goMGMainActivity2Front(Context context, @NonNull Integer num, Integer num2, Integer num3) {
        Intent intent = new Intent();
        intent.setClass(context, MGMainActivity_.class);
        intent.setFlags(131072);
        Bundle bundle = new Bundle();
        bundle.putInt("MainPos", num.intValue());
        if (num2 != null) {
            bundle.putInt("classiFy", num2.intValue());
        }
        if (num3 != null) {
            bundle.putInt("classifyPrimaryIndex", num3.intValue());
        }
        intent.putExtras(bundle);
        context.startActivity(intent);
    }

    public void goMGSettingActivity(Context context) {
        MGSettingActivity_.O0(context).start();
    }

    public void goMYAccountDetialActivity(Context context, AccountBean accountBean) {
        MYAccountDetialActivity_.r1(context).a(accountBean).start();
    }

    public void goMainLabelActivity(Context context, int i2) {
        goMainLabelActivity(context, i2, "", 2);
    }

    public void goMyAccountLoginActivity(Context context) {
        goMyAccountLoginActivity(context, 0, 2);
    }

    public void goMyAccountLoginActivityNewTask(Context context) {
        LoginSplashActivity_.intent(context).start();
    }

    public void goMyGameManagerActivity(Context context) {
        if (context instanceof MGMainActivity) {
            ((MGMainActivity) context).setTabSelect(2);
        } else {
            MyGameManagerActivity_.E0(context).start();
        }
    }

    public void goMyVoucherActivity(Context context) {
        AccountBean accountBean = accountBean(context);
        if (goLoginNetGame(context)) {
            return;
        }
        VoucherCodesBoxActivity_.G0(context).a(accountBean.getUid()).b(1).start();
    }

    public void goPAPayCenterActivity(Context context) {
        if (goLogin(context)) {
            return;
        }
        PAPayCenterActivity_.S0(context).start();
    }

    public void goQQChart(Context context, String str) {
        try {
            context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("mqqwpa://im/chat?chat_type=wpa&uin=" + str + "&version=1")));
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void goQQGroup(Context context, String str) {
        try {
            joinQQGroup(context, str);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void goSearchHintActivity(Context context) {
        SearchHintActivity_.S1(context).start();
    }

    public void goSearchListActivity(Context context, String str, boolean z3) {
        SearchListActivity1_.s1(context).d(str).c(z3).start();
    }

    public void goShareWebActivity(Context context, String str) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        intentDateBean.setLink_type_val(str);
        intentActivity(context, intentDateBean);
    }

    public void goShareWebActivityNewTask(Context context, IntentDateBean intentDateBean) {
        if (context == null) {
            return;
        }
        try {
            if (!context.getPackageName().equals("com.join.android.app.mgsim.wufun")) {
                Intent intent = new Intent();
                intent.putExtra("intentdate", intentDateBean);
                intent.setFlags(268435456);
                intent.setComponent(new ComponentName("com.join.android.app.mgsim.wufun", "com.join.mgps.activity.ShareWebActivity_"));
                context.startActivity(intent);
            } else {
                ((ShareWebActivity_.f0) ShareWebActivity_.O2(context).flags(268435456)).b(intentDateBean).start();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void goSmashGoldenEgg(Context context) {
        if (goLoginInteractive(context)) {
            return;
        }
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        intentDateBean.setObject("砸金蛋");
        intentDateBean.setLink_type_val(com.join.mgps.rpc.g.N0);
        getInstance().intentActivity(context, intentDateBean);
    }

    public void goSvip(Context context) {
        IntentUtil intentUtil = getInstance();
        intentUtil.goShareWebActivity(context, com.join.mgps.rpc.g.f51524k + "/member/vip_view/welcome?go=svip");
    }

    public void goTagGameListActivity(Context context, int i2, String str) {
        TagGameListActivity_.d1(context).b(0).e(i2).d(str).start();
    }

    public void goVip(Context context) {
        IntentUtil intentUtil = getInstance();
        intentUtil.goShareWebActivity(context, com.join.mgps.rpc.g.f51524k + "/member/vip_view/welcome?go=vip");
    }

    public void goVipCdk(Context context) {
        IntentUtil intentUtil = getInstance();
        intentUtil.goShareWebActivity(context, com.join.mgps.rpc.g.D + "/member/vip_view/welfare/cdk");
    }

    public void goVipForum(Context context) {
        IntentUtil intentUtil = getInstance();
        intentUtil.goShareWebActivity(context, com.join.mgps.rpc.g.D + "/member/vip_view/welfare/forum");
    }

    public void goVipMessage(Context context) {
        IntentUtil intentUtil = getInstance();
        intentUtil.goShareWebActivity(context, com.join.mgps.rpc.g.f51524k + "/member/vip_view/welfare/ad");
    }

    public void goWirelessSettings(Context context) {
        context.startActivity(new Intent("android.settings.SETTINGS"));
    }

    /* JADX WARN: Removed duplicated region for block: B:202:0x06af  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x06ce  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void intentActivity(android.content.Context r17, com.join.mgps.Util.IntentDateBean r18) {
        /*
            Method dump skipped, instructions count: 2264
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.Util.IntentUtil.intentActivity(android.content.Context, com.join.mgps.Util.IntentDateBean):void");
    }

    public boolean isLogined(Context context) {
        AccountBean accountBean = accountBean(context);
        return accountBean != null && d2.i(accountBean.getToken());
    }

    public boolean isTourist(Context context) {
        return AccountUtil_.getInstance_(context).isTourist();
    }

    public boolean joinQQGroup(Context context, String str) {
        Intent intent = new Intent();
        intent.setData(Uri.parse("mqqopensdkapi://bizAgent/qm/qr?url=http%3A%2F%2Fqm.qq.com%2Fcgi-bin%2Fqm%2Fqr%3Ffrom%3Dapp%26p%3Dandroid%26k%3D" + str));
        try {
            context.startActivity(intent);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public void setSplashActivity(Activity activity) {
        this.splashActivity = activity;
    }

    public boolean startGameCheckRealnameHasIntent(Context context, AccountBean accountBean, String str, String str2) {
        LoginCfgsBean loginCfgsBean;
        boolean z3 = false;
        if (MApplication.J.getIs_open_certify() == 1) {
            PrefDef_ prefDef_ = new PrefDef_(context);
            if (!x.t(prefDef_.lastShowRealNameTime().d().longValue()) && MApplication.J != null) {
                prefDef_.todayShowRealNameCount().g(Integer.valueOf(MApplication.J.getDaily_show_count()));
                prefDef_.startgametimes_open_certify().g(Integer.valueOf(MApplication.J.getTimes_open_certify()));
            }
            if (accountBean.getAccount_type() != 2 && accountBean.getUid() != 0) {
                if (accountBean.getIs_real_name() == 0 && (loginCfgsBean = MApplication.J) != null && loginCfgsBean.getIs_open_certify() == 1) {
                    int intValue = prefDef_.startgametimes_open_certify().d().intValue();
                    if (intValue > 0) {
                        prefDef_.startgametimes_open_certify().g(Integer.valueOf(intValue - 1));
                    } else {
                        if (MApplication.J.getCertify_is_allow_skip() == 0) {
                            IntentUtil intentUtil = getInstance();
                            intentUtil.goShareWebActivity(context, com.join.mgps.rpc.g.G + "/user/activity/real_name/index?from=" + str + "&gameId=" + str2);
                        } else {
                            int intValue2 = prefDef_.todayShowRealNameCount().d().intValue();
                            if (intValue2 > 0) {
                                IntentUtil intentUtil2 = getInstance();
                                intentUtil2.goShareWebActivity(context, com.join.mgps.rpc.g.G + "/user/activity/real_name/index?from=" + str + "&gameId=" + str2);
                                prefDef_.todayShowRealNameCount().g(Integer.valueOf(intValue2 - 1));
                            }
                        }
                        z3 = true;
                    }
                    prefDef_.lastShowRealNameTime().g(Long.valueOf(System.currentTimeMillis()));
                    return z3;
                }
            } else {
                prefDef_.lastShowRealNameTime().g(Long.valueOf(System.currentTimeMillis()));
                int intValue3 = prefDef_.startgametimes_open_certify().d().intValue();
                if (intValue3 > 0) {
                    prefDef_.startgametimes_open_certify().g(Integer.valueOf(intValue3 - 1));
                    return false;
                }
                LoginSplashActivity_.intent(context).gameId(str2).start();
                return true;
            }
        }
        return false;
    }

    private boolean goLogin(Context context, int i2) {
        if (!isLogined(context) || isTourist(context)) {
            ((LoginSplashActivity_.IntentBuilder_) LoginSplashActivity_.intent(context).flags(268435456)).start();
            return true;
        }
        return false;
    }

    public void goForumGroupActivity(Context context, int i2, String str) {
        ((ForumActivity_.q) ForumActivity_.s1(context).a(i2).b(str).flags(67108864)).start();
    }

    public void goMainLabelActivity(Context context, int i2, String str) {
        goMainLabelActivity(context, i2, str, 2);
    }

    public void goMyAccountLoginActivity(Context context, int i2, int i4) {
        LoginSplashActivity_.intent(context).start();
    }

    public void goSearchHintActivity(Context context, @Nullable String str) {
        SearchHintActivity_.S1(context).c(str).start();
    }

    public void goForumGroupActivity(Context context) {
        IntentUtil intentUtil = getInstance();
        intentUtil.goShareWebActivity(context, com.join.mgps.rpc.g.f51527l + "/static/group/group_square.html");
    }

    public void goMainLabelActivity(Context context, int i2, String str, int i4) {
        MainLabelActivity_.j1(context).d(i2).e(str).b(i4).start();
    }

    public void goSearchHintActivity(Context context, @Nullable ArrayList<String> arrayList, int i2) {
        SearchHintActivity_.S1(context).d(arrayList).b(i2).start();
    }

    public void goMainLabelActivity(Context context, int i2, int i4, String str) {
        MainLabelActivity_.j1(context).d(i2).b(2).a(i4).c(str).start();
    }

    public void goGameDetialActivity(Context context, String str, String str2, int i2, String str3, int i4, String str4) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(1);
        intentDateBean.setCrc_link_type_val(str);
        intentDateBean.setTpl_type(str2);
        intentDateBean.setJump_type(i2);
        ExtBean extBean = new ExtBean();
        extBean.setReMarks(str4);
        extBean.set_from_type(i4);
        extBean.setLocation(str3);
        intentDateBean.setExtBean(extBean);
        intentActivity(context, intentDateBean);
    }

    public void goMGMainActivity2Front(Context context) {
        Intent intent = new Intent();
        intent.setClass(context, MGMainActivity_.class);
        intent.setFlags(131072);
        intent.putExtras(new Bundle());
        context.startActivity(intent);
    }

    public void goGameDetialActivity(Context context, String str, int i2) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(1);
        intentDateBean.setCrc_link_type_val(str);
        ExtBean extBean = new ExtBean();
        extBean.set_from_type(i2);
        intentDateBean.setExtBean(extBean);
        intentActivity(context, intentDateBean);
    }
}
