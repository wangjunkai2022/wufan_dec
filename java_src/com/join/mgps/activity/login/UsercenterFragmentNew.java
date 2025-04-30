package com.join.mgps.activity.login;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.graphics.Rect;
import android.os.Build;
import android.text.Html;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.internal.view.SupportMenu;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.Fragment;
import com.MApplication;
import com.facebook.drawee.drawable.r;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.common.utils.j;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.d2;
import com.join.mgps.Util.i2;
import com.join.mgps.Util.t0;
import com.join.mgps.Util.u1;
import com.join.mgps.Util.x;
import com.join.mgps.activity.CommentSelfListActivity_;
import com.join.mgps.activity.MGMainActivity;
import com.join.mgps.activity.ShareWebActivity_;
import com.join.mgps.activity.VoucherCodesBoxActivity_;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountTokenSuccess;
import com.join.mgps.dto.AccountUserInfoRequestBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.ForumData;
import com.join.mgps.dto.ForumResponse;
import com.join.mgps.dto.JumpInfoBean;
import com.join.mgps.dto.MessageRedPointBean;
import com.join.mgps.dto.PayCenterOrderRequest;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.RequestUserCenterArgs;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.TouristLoginRequestBean;
import com.join.mgps.dto.UserCenterBean;
import com.join.mgps.dto.UserCenterItemBean;
import com.join.mgps.event.l;
import com.join.mgps.event.n;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.rpc.b;
import com.join.mgps.rpc.d;
import com.join.mgps.rpc.g;
import com.join.mgps.rpc.h;
import g1.f;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.greenrobot.eventbus.c;
import q.rorbin.badgeview.QBadgeView;
import q.rorbin.badgeview.a;
@EFragment(R.layout.fragment_usercenter_new)
/* loaded from: classes.dex */
public class UsercenterFragmentNew extends Fragment {
    private AccountBean accountBean;
    @ViewById
    TextView detail;
    List<DownloadTask> downloadTasks;
    @ViewById
    CustomerDownloadView downloadView1;
    @ViewById
    CustomerDownloadView downloadView2;
    @ViewById
    SimpleDraweeView everdayGiftIcon;
    @ViewById
    LinearLayout everdayGiftLayout;
    @ViewById
    TextView everdayGiftText;
    @ViewById
    SimpleDraweeView fingerIcon;
    @ViewById
    LinearLayout fingerLayout;
    @ViewById
    TextView fingerText;
    @ViewById
    ImageView iv_arrow;
    @ViewById
    SimpleDraweeView iv_user_avatar;
    @ViewById
    SimpleDraweeView iv_user_avatar2;
    @ViewById
    ImageView iv_user_vip;
    @ViewById
    TextView ll_copperTitle;
    @ViewById
    LinearLayout ll_members;
    @ViewById
    View ll_membersNew;
    @ViewById
    LinearLayout ll_svip;
    @ViewById
    LinearLayout ll_userinfo;
    private Activity mActivity;
    MyAdapter mAdapter;
    MyAdapter mAdapter2;
    MyAdapter mAdapter3;
    @ViewById
    GridView mGridView;
    @ViewById
    GridView mGridView2;
    @ViewById
    GridView mGridView3;
    d mRpcClient;
    private a messagebadge1;
    @ViewById
    View modNotVipView;
    @ViewById
    TextView onekeyMessage;
    @ViewById
    TextView onekeyTitle;
    @ViewById
    SimpleDraweeView onkeyIcon;
    @ViewById
    LinearLayout onkeyLayout;
    @ViewById
    TextView onkeyText;
    @Pref
    PrefDef_ prefDef;
    b rpcAccountClient;
    h rpcForumClient;
    @ViewById
    NestedScrollView scroolView;
    @ViewById
    View statubar;
    @ViewById
    TextView svipTitle;
    @ViewById

    /* renamed from: test  reason: collision with root package name */
    View f37627test;
    @ViewById
    View titleLayout;
    @ViewById
    TextView tv_user_account;
    @ViewById
    TextView tv_user_coppers;
    @ViewById
    TextView tv_user_member;
    @ViewById
    TextView tv_user_nickname;
    @ViewById
    TextView tv_user_rank;
    @ViewById
    TextView tv_user_svip;
    @ViewById
    View userLayout;
    @ViewById
    SimpleDraweeView vipModIcon;
    @ViewById
    LinearLayout vipModLayout;
    @ViewById
    TextView vipModText;
    @ViewById
    ProgressBar vipProgress;
    @ViewById
    TextView vipTime;
    View view = null;
    private Map<String, DownloadTask> downloadTasksMap = new ConcurrentHashMap();
    UserCenterBean userCenterBeans = new UserCenterBean();
    boolean isGetViewConfigs = false;
    private List<UserCenterBean.UserCenterItem> mUserCenterDatas = Collections.synchronizedList(new ArrayList());
    private List<UserCenterBean.UserCenterItem> mUserCenterDatas2 = Collections.synchronizedList(new ArrayList());
    private List<UserCenterBean.UserCenterItem> mUserCenterDatas3 = Collections.synchronizedList(new ArrayList());
    volatile boolean isGetingUserInfo = false;
    Map<String, DownloadTask> downloadedMap = new HashMap();
    Map<String, DownloadTask> downloadingMap = new HashMap();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class MyAdapter extends BaseAdapter {
        private List<UserCenterBean.UserCenterItem> mDatas;
        private int totalnum = 0;
        private boolean isChange = false;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class ViewHolder {
            View emptyDivider;
            SimpleDraweeView iv_module_icon;
            LinearLayout ll_content;
            TextView messageBadge;
            TextView tv_module_doings;
            TextView tv_module_name;

            ViewHolder() {
            }
        }

        public MyAdapter(List<UserCenterBean.UserCenterItem> list) {
            this.mDatas = list;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.mDatas.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            return this.mDatas.get(i2);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            ViewHolder viewHolder;
            try {
                if (view == null) {
                    view = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_usercenter, viewGroup, false);
                    viewHolder = new ViewHolder();
                    viewHolder.iv_module_icon = (SimpleDraweeView) view.findViewById(R.id.iv_module_icon);
                    viewHolder.tv_module_name = (TextView) view.findViewById(R.id.tv_module_name);
                    viewHolder.tv_module_doings = (TextView) view.findViewById(R.id.tv_module_doings);
                    viewHolder.ll_content = (LinearLayout) view.findViewById(R.id.ll_content);
                    viewHolder.emptyDivider = view.findViewById(R.id.emptyDivider);
                    TextView textView = (TextView) view.findViewById(R.id.messageBadge);
                    viewHolder.messageBadge = textView;
                    textView.setVisibility(8);
                    viewHolder.emptyDivider.setVisibility(8);
                    view.setTag(viewHolder);
                } else {
                    viewHolder = (ViewHolder) view.getTag();
                }
                UserCenterBean.UserCenterItem userCenterItem = this.mDatas.get(i2);
                if (!AccountUtil_.getInstance_(UsercenterFragmentNew.this.mActivity).isTourist()) {
                    if (i2 == 0) {
                        if (this.totalnum > 0) {
                            viewHolder.messageBadge.setVisibility(0);
                            if (this.totalnum > 99) {
                                viewHolder.messageBadge.setText("+99");
                            } else {
                                TextView textView2 = viewHolder.messageBadge;
                                textView2.setText("" + this.totalnum);
                            }
                        } else {
                            viewHolder.messageBadge.setVisibility(8);
                        }
                    } else {
                        viewHolder.messageBadge.setVisibility(8);
                    }
                }
                if (userCenterItem.isEmpty()) {
                    viewHolder.ll_content.setVisibility(8);
                } else {
                    if (userCenterItem.isPlaceHolder()) {
                        viewHolder.ll_content.setVisibility(4);
                    } else {
                        viewHolder.ll_content.setVisibility(0);
                    }
                    if (userCenterItem.getMain() != null) {
                        MyImageLoader.i(viewHolder.iv_module_icon, userCenterItem.getMain().getPic_remote(), r.c.f12140c);
                        viewHolder.tv_module_name.setText(userCenterItem.getMain().getSub_title());
                        viewHolder.tv_module_doings.setText(userCenterItem.getMain().getLabel());
                    }
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            return view;
        }

        public void setTotalnum(int i2) {
            this.isChange = !this.isChange;
            this.totalnum = i2;
        }
    }

    private void addDivider(List<UserCenterBean.UserCenterItem> list) {
        list.add(createItem());
        list.add(createItem());
        list.add(createItem());
    }

    private void addPlaceHolder(List<UserCenterBean.UserCenterItem> list, int i2) {
        for (int i4 = 0; i4 < i2; i4++) {
            UserCenterBean.UserCenterItem userCenterItem = new UserCenterBean.UserCenterItem();
            userCenterItem.setPlaceHolder(true);
            list.add(userCenterItem);
        }
    }

    private boolean isLogined(Context context) {
        AccountBean accountData = AccountUtil_.getInstance_(context).getAccountData();
        return accountData != null && d2.i(accountData.getToken());
    }

    private void setCardData(final UserCenterBean.UserCenterItem userCenterItem, final View view, SimpleDraweeView simpleDraweeView, TextView textView) {
        view.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.UsercenterFragmentNew.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (userCenterItem.getSub() == null || userCenterItem.getSub().size() <= 0) {
                    return;
                }
                IntentUtil.getInstance().intentActivity(view.getContext(), userCenterItem.getSub().get(0).getIntentDataBean());
            }
        });
        UserCenterItemBean main = userCenterItem.getMain();
        if (main != null) {
            MyImageLoader.h(simpleDraweeView, main.getPic_remote());
            textView.setText(main.getSub_title());
        }
    }

    private void setListener(GridView gridView, final List<UserCenterBean.UserCenterItem> list) {
        gridView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.join.mgps.activity.login.UsercenterFragmentNew.2
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j4) {
                synchronized (list) {
                    if (list.size() <= 0) {
                        return;
                    }
                    try {
                        UserCenterBean.UserCenterItem userCenterItem = (UserCenterBean.UserCenterItem) list.get(i2);
                        JumpInfoBean jumpInfoBean = userCenterItem.getSub().get(0);
                        int parseInt = Integer.parseInt(jumpInfoBean.getJump_type());
                        int parseInt2 = Integer.parseInt(jumpInfoBean.getLink_type());
                        if (userCenterItem.getMain() != null && userCenterItem.getMain().getLabel() != null) {
                            UsercenterFragmentNew.this.changeMgState(userCenterItem.getMain().getLabel(), parseInt);
                        }
                        if (parseInt2 != 3) {
                            UsercenterFragmentNew.this.gotoTargetActivity(jumpInfoBean, parseInt2);
                        } else if (parseInt == 29) {
                            IntentUtil.getInstance().goDownloadSettingActivity(UsercenterFragmentNew.this.mActivity);
                        } else {
                            switch (parseInt) {
                                case 15:
                                    MApplication.H = 0;
                                    UsercenterFragmentNew.this.hideRedPoint();
                                    IntentUtil.getInstance().goForumProfileMessageActivity(UsercenterFragmentNew.this.mActivity);
                                    break;
                                case 16:
                                    IntentUtil.getInstance().goForumMyDynamicActivity(UsercenterFragmentNew.this.getActivity());
                                    break;
                                case 17:
                                    IntentUtil.getInstance().goForumAndPrfileActivity(0, UsercenterFragmentNew.this.mActivity);
                                    break;
                                case 18:
                                    UsercenterFragmentNew usercenterFragmentNew = UsercenterFragmentNew.this;
                                    usercenterFragmentNew.accountBean = AccountUtil_.getInstance_(usercenterFragmentNew.mActivity).getAccountData();
                                    if (!UsercenterFragmentNew.this.goLogin()) {
                                        IntentUtil.getInstance().goPAPayCenterActivity(UsercenterFragmentNew.this.mActivity);
                                        break;
                                    }
                                    break;
                                case 19:
                                    if (!UsercenterFragmentNew.this.goLogin()) {
                                        IntentUtil intentUtil = IntentUtil.getInstance();
                                        Activity activity = UsercenterFragmentNew.this.mActivity;
                                        intentUtil.goShareWebActivity(activity, g.f51524k + "/static/vip2020/v2/index.html#/giftCenter");
                                        break;
                                    }
                                    break;
                                case 20:
                                    UsercenterFragmentNew usercenterFragmentNew2 = UsercenterFragmentNew.this;
                                    usercenterFragmentNew2.accountBean = AccountUtil_.getInstance_(usercenterFragmentNew2.mActivity).getAccountData();
                                    if (!UsercenterFragmentNew.this.goLogin()) {
                                        VoucherCodesBoxActivity_.G0(UsercenterFragmentNew.this.mActivity).b(1).a(UsercenterFragmentNew.this.accountBean.getUid()).start();
                                        break;
                                    }
                                    break;
                                case 21:
                                    IntentUtil.getInstance().goFaceTransferHomePageActivity(UsercenterFragmentNew.this.mActivity);
                                    break;
                                case 22:
                                    IntentUtil.getInstance().goJoystickManager(UsercenterFragmentNew.this.mActivity);
                                    break;
                                case 23:
                                    IntentUtil intentUtil2 = IntentUtil.getInstance();
                                    Activity activity2 = UsercenterFragmentNew.this.mActivity;
                                    intentUtil2.goShareWebActivity(activity2, g.f51563x + "/Auxiliary_tool");
                                    break;
                                case 24:
                                    IntentUtil.getInstance().goDownloadSettingActivity(UsercenterFragmentNew.this.mActivity);
                                    break;
                                case 25:
                                    IntentUtil.getInstance().goFeedback(UsercenterFragmentNew.this.mActivity);
                                    break;
                                default:
                                    switch (parseInt) {
                                        case 47:
                                            if (!UsercenterFragmentNew.this.goLogin()) {
                                                IntentUtil.getInstance().goMYAccountDetialActivity(UsercenterFragmentNew.this.mActivity, AccountUtil_.getInstance_(UsercenterFragmentNew.this.mActivity).getAccountData());
                                                break;
                                            }
                                            break;
                                        case 48:
                                            IntentDateBean intentDateBean = new IntentDateBean();
                                            intentDateBean.setLink_type(4);
                                            intentDateBean.setLink_type_val(g.f51548s);
                                            ShareWebActivity_.O2(UsercenterFragmentNew.this.mActivity).b(intentDateBean).start();
                                            break;
                                        case 49:
                                            IntentUtil.getInstance().goSvip(UsercenterFragmentNew.this.mActivity);
                                            break;
                                        case 50:
                                            IntentUtil.getInstance().goMGSettingActivity(UsercenterFragmentNew.this.mActivity);
                                            break;
                                        case 51:
                                            com.join.mgps.Util.r.i(UsercenterFragmentNew.this.mActivity);
                                            break;
                                        default:
                                            UsercenterFragmentNew.this.gotoTargetActivity(jumpInfoBean, parseInt2);
                                            break;
                                    }
                            }
                        }
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                }
            }
        });
    }

    private void showRedPoint(View view) {
        MessageRedPointBean.MessagesBean.DataBean dataBean;
        int community_praise_surplus_number;
        if (view == null || (dataBean = MApplication.D) == null || (community_praise_surplus_number = dataBean.getCommunity_praise_surplus_number() + MApplication.D.getCommunity_surplus_number() + MApplication.D.getNotice_surplus_number() + MApplication.D.getPraise_surplus_number() + MApplication.D.getReplay_surplus_number()) <= 0) {
            return;
        }
        try {
            Thread.sleep(200L);
            if (this.messagebadge1 == null) {
                this.messagebadge1 = new QBadgeView(this.mActivity).c(view).q(community_praise_surplus_number).g(SupportMenu.CATEGORY_MASK).v(getResources().getDimensionPixelSize(R.dimen.wdp12), false).o(8388693).l(-1);
            }
        } catch (InterruptedException e4) {
            e4.printStackTrace();
        }
    }

    private void testAddCommentSelf(List<UserCenterBean.UserCenterItem> list) {
    }

    private void updateViewH(List<UserCenterBean.UserCenterItem> list, GridView gridView) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        c.f().t(this);
        List<DownloadTask> d4 = f.G().d();
        this.downloadTasks = d4;
        if (d4 != null && d4.size() > 0) {
            for (DownloadTask downloadTask : this.downloadTasks) {
                this.downloadTasksMap.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.statubar.getLayoutParams();
        if (Build.VERSION.SDK_INT >= 21) {
            layoutParams.height = j.v(getContext());
        }
        this.statubar.setLayoutParams(layoutParams);
        getDownloadTaskInfo();
        this.mRpcClient = com.join.mgps.rpc.impl.c.P1();
        this.rpcForumClient = com.join.mgps.rpc.impl.f.A0();
        UserCenterBean userCenterBean = (UserCenterBean) JsonMapper.getInstance().fromJson(this.prefDef.userCenterViewConfigsv2().d(), UserCenterBean.class);
        this.userCenterBeans = userCenterBean;
        if (userCenterBean != null) {
            this.mUserCenterDatas.clear();
            this.mUserCenterDatas2.clear();
            this.mUserCenterDatas3.clear();
            this.mUserCenterDatas.addAll(wrapDatas(this.userCenterBeans, 0));
            this.mUserCenterDatas2.addAll(wrapDatas(this.userCenterBeans, 1));
            this.mUserCenterDatas3.addAll(wrapDatas(this.userCenterBeans, 2));
        }
        this.scroolView.setOnScrollChangeListener(new NestedScrollView.OnScrollChangeListener() { // from class: com.join.mgps.activity.login.UsercenterFragmentNew.1
            @Override // androidx.core.widget.NestedScrollView.OnScrollChangeListener
            public void onScrollChange(NestedScrollView nestedScrollView, int i2, int i4, int i5, int i6) {
                Rect rect = new Rect();
                UsercenterFragmentNew.this.scroolView.getHitRect(rect);
                if (UsercenterFragmentNew.this.userLayout.getLocalVisibleRect(rect) && UsercenterFragmentNew.this.titleLayout.getVisibility() == 0) {
                    UsercenterFragmentNew.this.titleLayout.setVisibility(8);
                    UsercenterFragmentNew.this.titleLayout.startAnimation(AnimationUtils.loadAnimation(UsercenterFragmentNew.this.mActivity, R.anim.out_translate_top));
                } else if (UsercenterFragmentNew.this.userLayout.getLocalVisibleRect(rect) || UsercenterFragmentNew.this.titleLayout.getVisibility() != 8) {
                } else {
                    UsercenterFragmentNew.this.titleLayout.setVisibility(0);
                    UsercenterFragmentNew.this.titleLayout.startAnimation(AnimationUtils.loadAnimation(UsercenterFragmentNew.this.mActivity, R.anim.in_translate_top));
                }
            }
        });
        this.mAdapter = new MyAdapter(this.mUserCenterDatas);
        this.mAdapter2 = new MyAdapter(this.mUserCenterDatas2);
        this.mAdapter3 = new MyAdapter(this.mUserCenterDatas3);
        this.mGridView.setAdapter((ListAdapter) this.mAdapter);
        this.mGridView2.setAdapter((ListAdapter) this.mAdapter2);
        this.mGridView3.setAdapter((ListAdapter) this.mAdapter3);
        setListener(this.mGridView, this.mUserCenterDatas);
        setListener(this.mGridView2, this.mUserCenterDatas2);
        setListener(this.mGridView3, this.mUserCenterDatas3);
        this.mAdapter.notifyDataSetChanged();
        pullMyProfileInfo();
        showNotifUi();
        if (!com.join.android.app.common.http.c.f17006c) {
            this.f37627test.setVisibility(8);
        } else {
            this.f37627test.setVisibility(0);
        }
    }

    void calculateVIPExpTime() {
        try {
            long vip_exp_time = this.accountBean.getVip_exp_time() * 1000;
            long currentTimeMillis = System.currentTimeMillis();
            long j4 = (vip_exp_time - currentTimeMillis) / 86400000;
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.tv_user_member.getLayoutParams();
            if (vip_exp_time > currentTimeMillis) {
                this.tv_user_member.setLayoutParams(layoutParams);
                int i2 = 0;
                this.iv_user_vip.setVisibility(0);
                String str = "有效期至" + x.m(vip_exp_time);
                try {
                    i2 = Integer.parseInt(x.q(vip_exp_time));
                } catch (Exception unused) {
                }
                if (j4 <= 30) {
                    this.tv_user_member.setText(Html.fromHtml(str + "\n<font color=#FFFFFF>剩余" + j4 + "天</font>"));
                } else if (i2 > 2037) {
                    this.tv_user_member.setText("有效期至2099-05-12");
                } else {
                    this.tv_user_member.setText(str);
                }
            } else {
                this.tv_user_member.setLayoutParams(layoutParams);
                this.iv_user_vip.setVisibility(8);
                this.tv_user_member.setText("去开通");
                this.ll_members.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.UsercenterFragmentNew.9
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        IntentUtil.getInstance().goVip(UsercenterFragmentNew.this.mActivity);
                    }
                });
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x001c, code lost:
        if (r4 != 11) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void changeDownloadTaskNumber(com.github.snowdream.android.app.downloader.DownloadTask r3, int r4) {
        /*
            r2 = this;
            if (r3 != 0) goto L3
            return
        L3:
            java.lang.String r0 = r3.getCrc_link_type_val()
            r1 = 2
            if (r4 == r1) goto L8d
            r1 = 3
            if (r4 == r1) goto L7f
            r1 = 5
            if (r4 == r1) goto L64
            r1 = 6
            if (r4 == r1) goto L56
            r1 = 7
            if (r4 == r1) goto L3b
            r1 = 10
            if (r4 == r1) goto L20
            r3 = 11
            if (r4 == r3) goto L71
            goto La7
        L20:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.downloadedMap
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto L2d
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.downloadedMap
            r4.put(r0, r3)
        L2d:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.downloadingMap
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.downloadingMap
            r4.put(r0, r3)
            goto La7
        L3b:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.downloadedMap
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto L48
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.downloadedMap
            r3.remove(r0)
        L48:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.downloadingMap
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.downloadingMap
            r3.remove(r0)
            goto La7
        L56:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.downloadingMap
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.downloadingMap
            r3.remove(r0)
            goto La7
        L64:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.downloadedMap
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto L71
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.downloadedMap
            r3.remove(r0)
        L71:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.downloadingMap
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.downloadingMap
            r3.remove(r0)
            goto La7
        L7f:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.downloadingMap
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.downloadingMap
            r3.remove(r0)
            goto La7
        L8d:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.downloadedMap
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto L9a
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.downloadedMap
            r4.put(r0, r3)
        L9a:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.downloadingMap
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.downloadingMap
            r4.put(r0, r3)
        La7:
            r2.updateDownloadView()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.login.UsercenterFragmentNew.changeDownloadTaskNumber(com.github.snowdream.android.app.downloader.DownloadTask, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void changeMgState(String str, int i2) {
        if (com.join.android.app.common.utils.f.j(this.mActivity)) {
            try {
                AccountBean accountData = AccountUtil_.getInstance_(this.mActivity).getAccountData();
                this.accountBean = accountData;
                if (accountData != null && isOfficialAccount()) {
                    if (this.mRpcClient.W(RequestBeanUtil.getInstance(this.mActivity).getRequestMsgState(this.accountBean.getUid(), str, i2)).getMessages().getData().get(0).isVal()) {
                        t0.b("UserCenter", "changeMgState success");
                    } else {
                        t0.b("UserCenter", "changeMgState failure");
                    }
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    UserCenterBean.UserCenterItem createItem() {
        UserCenterBean.UserCenterItem userCenterItem = new UserCenterBean.UserCenterItem();
        userCenterItem.setEmpty(true);
        return userCenterItem;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void detail() {
        UserCenterBean userCenterBean = this.userCenterBeans;
        if (userCenterBean == null) {
            return;
        }
        UserCenterBean.UserCenterItem detail_entrance = userCenterBean.getDetail_entrance();
        if (detail_entrance != null) {
            IntentUtil.getInstance().intentActivity(this.mActivity, detail_entrance.getSub().get(0).getIntentDataBean());
        } else if (this.accountBean.getVip_level() == 1) {
            IntentDateBean intentDateBean = new IntentDateBean();
            intentDateBean.setLink_type(3);
            intentDateBean.setJump_type(56);
            IntentUtil.getInstance().intentActivity(this.mActivity, intentDateBean);
        } else {
            IntentUtil.getInstance().goVip(this.mActivity);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void downloadView1() {
        IntentUtil.getInstance().goMyGameManagerActivity(this.mActivity);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void downloadView2() {
        IntentUtil.getInstance().goMyGameManagerActivity(this.mActivity);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getDownloadTaskInfo() {
        List<DownloadTask> r3 = f.G().r();
        List<DownloadTask> q3 = f.G().q();
        if (q3 != null && q3.size() > 0) {
            for (DownloadTask downloadTask : q3) {
                this.downloadedMap.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        if (r3 != null && r3.size() > 0) {
            for (DownloadTask downloadTask2 : r3) {
                this.downloadingMap.put(downloadTask2.getCrc_link_type_val(), downloadTask2);
            }
        }
        updateDownloadView();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getUserInfo() {
        if (this.isGetingUserInfo) {
            return;
        }
        this.isGetingUserInfo = true;
        this.accountBean = AccountUtil_.getInstance_(this.mActivity).getAccountData();
        if (com.join.android.app.common.utils.f.j(this.mActivity)) {
            AccountBean accountBean = this.accountBean;
            if (accountBean != null && !TextUtils.isEmpty(accountBean.getToken())) {
                try {
                    AccountUserInfoRequestBean accountUserInfoRequestBean = new AccountUserInfoRequestBean();
                    accountUserInfoRequestBean.setUid(this.accountBean.getUid() + "");
                    accountUserInfoRequestBean.setToken(this.accountBean.getToken());
                    accountUserInfoRequestBean.setDevice_id("");
                    accountUserInfoRequestBean.setSign(u1.f(accountUserInfoRequestBean));
                    AccountResultMainBean<AccountBean> d4 = this.rpcAccountClient.d(accountUserInfoRequestBean.getParams());
                    if (d4 != null) {
                        if (d4.getError() == 0) {
                            AccountBean data = d4.getData();
                            if (data != null && data.getUid() != 0) {
                                this.accountBean.setSvip_level(data.getSvip_level());
                                this.accountBean.setVip_level(data.getVip_level());
                                this.accountBean.setLive_total_charm(data.getLive_total_charm());
                                this.accountBean.setIs_anchor(data.getIs_anchor());
                                this.accountBean.setPapaMoney(data.getPapaMoney());
                                this.accountBean.setMember_title(data.getMember_title());
                                if (d2.i(data.getNickname())) {
                                    this.accountBean.setNickname(data.getNickname());
                                }
                            }
                            AccountUtil_.getInstance_(this.mActivity).saveAccountData(this.accountBean, this.mActivity);
                            this.isGetingUserInfo = false;
                            refreshViews();
                            getViewConfigs();
                            return;
                        } else if (d4.getError() == 701) {
                            tokenFailure();
                            return;
                        } else {
                            this.isGetingUserInfo = false;
                            getViewConfigs();
                            return;
                        }
                    }
                    this.isGetingUserInfo = false;
                    getViewConfigs();
                    return;
                } catch (Exception e4) {
                    this.isGetingUserInfo = false;
                    getViewConfigs();
                    e4.printStackTrace();
                    return;
                }
            }
            touristLogin();
            return;
        }
        this.isGetingUserInfo = false;
        loadViewConfigsFromLocal();
    }

    void getViewConfigs() {
        Activity activity;
        if (com.join.android.app.common.utils.f.j(this.mActivity)) {
            try {
                AccountBean accountData = AccountUtil_.getInstance_(this.mActivity).getAccountData();
                this.accountBean = accountData;
                if (accountData == null || (activity = this.mActivity) == null || this.isGetViewConfigs) {
                    return;
                }
                int i2 = 1;
                this.isGetViewConfigs = true;
                RequestModel<RequestUserCenterArgs> requestModel = new RequestModel<>(activity);
                int uid = this.accountBean.getUid();
                String token = this.accountBean.getToken();
                if (this.accountBean.getVip_level() != 1) {
                    i2 = 0;
                }
                requestModel.setArgs(new RequestUserCenterArgs(uid, token, i2));
                ResponseModel<UserCenterBean> body = com.join.mgps.rpc.impl.h.L().J().h0(requestModel).execute().body();
                if (body != null && body.getCode() == 600) {
                    this.prefDef.userCenterViewConfigsv2().g(JsonMapper.toJsonString(body.getData()));
                    loadViewConfigsFromLocal();
                } else {
                    loadViewConfigsFromLocal();
                }
                this.isGetViewConfigs = false;
                return;
            } catch (Exception e4) {
                this.isGetViewConfigs = false;
                e4.printStackTrace();
                loadViewConfigsFromLocal();
                return;
            }
        }
        loadViewConfigsFromLocal();
    }

    boolean goLogin() {
        return IntentUtil.getInstance().goLogin(getContext());
    }

    void gotoTargetActivity(JumpInfoBean jumpInfoBean, int i2) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setTpl_type(jumpInfoBean.getTpl_type());
        intentDateBean.setLink_type(i2);
        intentDateBean.setJump_type(Integer.parseInt(jumpInfoBean.getJump_type()));
        intentDateBean.setCrc_link_type_val(jumpInfoBean.getCrc_link_type_val());
        intentDateBean.setLink_type_val(jumpInfoBean.getLink_type_val());
        IntentUtil.getInstance().intentActivity(this.mActivity, intentDateBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void hideRedPoint() {
        a aVar = this.messagebadge1;
        if (aVar != null) {
            aVar.hide(false);
        }
        MApplication.H = 0;
    }

    boolean isActivityFinish() {
        Activity activity = this.mActivity;
        if (activity != null) {
            if (activity.isFinishing()) {
                return true;
            }
            return Build.VERSION.SDK_INT >= 17 && this.mActivity.isDestroyed();
        }
        return false;
    }

    boolean isOfficialAccount() {
        if (AccountUtil_.getInstance_(this.mActivity).getAccountData() == null) {
            return false;
        }
        return !AccountUtil_.getInstance_(this.mActivity).isTourist();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void ll_copper() {
        if (this.userCenterBeans == null) {
            return;
        }
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        List<UserCenterBean.TitleItemBean> member_func = this.userCenterBeans.getMember_func();
        if (member_func != null && member_func.size() > 0) {
            intentDateBean.setLink_type_val(member_func.get(0).getJumpUrl());
        }
        ShareWebActivity_.P2(this).b(intentDateBean).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void loadViewConfigsFromLocal() {
        UserCenterBean userCenterBean;
        UserCenterBean.TitleItemBean join_member;
        int i2;
        try {
            userCenterBean = (UserCenterBean) JsonMapper.getInstance().fromJson(this.prefDef.userCenterViewConfigsv2().d(), UserCenterBean.class);
            this.userCenterBeans = userCenterBean;
        } catch (Exception e4) {
            t0.b("UserCenter", "loadViewConfigsFromLocal exception:" + e4.getMessage());
        }
        if (userCenterBean != null && this.mActivity != null) {
            synchronized (this.mUserCenterDatas) {
                this.mUserCenterDatas.clear();
                this.mUserCenterDatas2.clear();
                this.mUserCenterDatas3.clear();
                this.mUserCenterDatas.addAll(wrapDatas(this.userCenterBeans, 0));
                this.mUserCenterDatas2.addAll(wrapDatas(this.userCenterBeans, 1));
                this.mUserCenterDatas3.addAll(wrapDatas(this.userCenterBeans, 2));
                updateViewH(this.mUserCenterDatas, this.mGridView);
                updateViewH(this.mUserCenterDatas2, this.mGridView2);
                updateViewH(this.mUserCenterDatas3, this.mGridView3);
                this.mAdapter.notifyDataSetChanged();
                this.mAdapter2.notifyDataSetChanged();
                this.mAdapter3.notifyDataSetChanged();
                UserCenterBean userCenterBean2 = this.userCenterBeans;
                if (userCenterBean2 != null) {
                    List<UserCenterBean.TitleItemBean> member_func = userCenterBean2.getMember_func();
                    if (member_func != null) {
                        if (member_func.size() >= 0) {
                            UserCenterBean.TitleItemBean titleItemBean = member_func.get(0);
                            this.ll_copperTitle.setText(titleItemBean.getTitle());
                            this.tv_user_coppers.setText(titleItemBean.getSubTitle());
                        }
                        if (member_func.size() >= 1) {
                            UserCenterBean.TitleItemBean titleItemBean2 = member_func.get(1);
                            this.onekeyTitle.setText(titleItemBean2.getTitle());
                            this.onekeyMessage.setText(titleItemBean2.getSubTitle());
                        }
                        if (member_func.size() >= 2) {
                            UserCenterBean.TitleItemBean titleItemBean3 = member_func.get(2);
                            this.svipTitle.setText(titleItemBean3.getTitle());
                            this.tv_user_svip.setText(titleItemBean3.getSubTitle());
                        }
                    }
                    AccountBean accountData = AccountUtil_.getInstance_(this.mActivity).getAccountData();
                    this.accountBean = accountData;
                    if (accountData.getVip_level() == 1) {
                        this.modNotVipView.setVisibility(8);
                        this.ll_members.setVisibility(8);
                        this.ll_membersNew.setVisibility(0);
                        if (this.accountBean.getVip_level() == 1) {
                            long vip_exp_time = this.accountBean.getVip_exp_time() * 1000;
                            long currentTimeMillis = (vip_exp_time - System.currentTimeMillis()) / 86400000;
                            try {
                                i2 = Integer.parseInt(x.q(vip_exp_time));
                            } catch (Exception unused) {
                                i2 = 0;
                            }
                            if (currentTimeMillis <= 30) {
                                TextView textView = this.vipTime;
                                textView.setText("会员剩余：" + currentTimeMillis + "天");
                            } else if (i2 >= 2037) {
                                this.vipTime.setText("终生会员");
                            } else {
                                TextView textView2 = this.vipTime;
                                textView2.setText("会员剩余：" + currentTimeMillis + "天");
                            }
                            this.vipProgress.setProgress((int) currentTimeMillis);
                            this.vipProgress.setMax(365);
                            this.detail.setText("详情");
                        } else {
                            this.detail.setText("开通会员");
                            UserCenterBean userCenterBean3 = this.userCenterBeans;
                            if (userCenterBean3 != null && (join_member = userCenterBean3.getJoin_member()) != null) {
                                this.tv_user_member.setText(join_member.getSubTitle());
                                this.vipTime.setText(join_member.getSubTitle());
                            }
                        }
                        List<UserCenterBean.UserCenterItem> module_entrance_list = this.userCenterBeans.getModule_entrance_list();
                        if (module_entrance_list != null && module_entrance_list.size() > 0) {
                            setCardData(module_entrance_list.get(0), this.vipModLayout, this.vipModIcon, this.vipModText);
                            if (module_entrance_list.size() > 1) {
                                setCardData(module_entrance_list.get(1), this.fingerLayout, this.fingerIcon, this.fingerText);
                            }
                            if (module_entrance_list.size() > 2) {
                                setCardData(module_entrance_list.get(2), this.onkeyLayout, this.onkeyIcon, this.onkeyText);
                            }
                            if (module_entrance_list.size() > 3) {
                                setCardData(module_entrance_list.get(3), this.everdayGiftLayout, this.everdayGiftIcon, this.everdayGiftText);
                            }
                        }
                    } else {
                        this.modNotVipView.setVisibility(0);
                        UserCenterBean.TitleItemBean join_member2 = this.userCenterBeans.getJoin_member();
                        if (join_member2 != null) {
                            this.tv_user_member.setText(join_member2.getSubTitle());
                            this.ll_members.setVisibility(0);
                            this.ll_membersNew.setVisibility(8);
                        }
                    }
                }
                pullMyProfileInfo();
            }
            showNotifUi();
        }
    }

    @Receiver(actions = {f1.a.f65498r})
    public void loginOut(Context context) {
        if (AccountUtil_.getInstance_(context).getAccountData() == null) {
            touristLogin();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        this.mActivity = (Activity) context;
        this.rpcAccountClient = com.join.mgps.rpc.impl.a.b0();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        c.f().y(this);
        this.mActivity = null;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(n nVar) {
        if (((MGMainActivity) getActivity()).getPositionNum() == 1) {
            pullMyProfileInfo();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z3) {
        super.onHiddenChanged(z3);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        refreshUserCenter();
        MessageRedPointBean.MessagesBean.DataBean dataBean = MApplication.D;
        if (dataBean != null) {
            int community_praise_surplus_number = dataBean.getCommunity_praise_surplus_number() + MApplication.D.getCommunity_surplus_number() + MApplication.D.getNotice_surplus_number() + MApplication.D.getPraise_surplus_number() + MApplication.D.getReplay_surplus_number();
            MApplication.H = community_praise_surplus_number;
            if (community_praise_surplus_number == 0) {
                hideRedPoint();
            } else {
                showNotifUi();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void onekey() {
        if (this.userCenterBeans == null) {
            return;
        }
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        List<UserCenterBean.TitleItemBean> member_func = this.userCenterBeans.getMember_func();
        if (member_func != null && member_func.size() > 1) {
            intentDateBean.setLink_type_val(member_func.get(1).getJumpUrl());
        }
        ShareWebActivity_.O2(this.mActivity).b(intentDateBean).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void pullMyProfileInfo() {
        ForumResponse<ForumData.ForumProfilePostsData> k4;
        ForumData.ForumProfilePostsData data;
        ForumBean.ForumProfilePostUserInfoBean user_info;
        if (com.join.android.app.common.utils.f.j(this.mActivity)) {
            try {
                AccountBean accountData = AccountUtil_.getInstance_(this.mActivity).getAccountData();
                if (accountData == null || accountData.getUid() == 0 || (k4 = this.rpcForumClient.k(accountData.getUid(), accountData.getToken(), 1, 0, "")) == null || (data = k4.getData()) == null || (user_info = data.getUser_info()) == null) {
                    return;
                }
                updateAdapterByNewMsgCount(user_info.getUnread_message());
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    public void refreshUserCenter() {
        if (this.mActivity == null) {
            return;
        }
        refreshViews();
        if (this.isGetingUserInfo) {
            return;
        }
        getUserInfo();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void refreshViews() {
        List<UserCenterBean.TitleItemBean> member_func;
        UserCenterBean.TitleItemBean join_member;
        try {
            Activity activity = this.mActivity;
            if (activity == null) {
                return;
            }
            this.accountBean = AccountUtil_.getInstance_(activity).getAccountData();
            this.tv_user_nickname.setText("未登录");
            this.iv_user_avatar.getHierarchy().y(new com.facebook.drawee.drawable.n(Color.parseColor("#99BDC9")));
            this.iv_user_avatar.setImageResource(R.drawable.unloginstatus);
            this.tv_user_account.setText("");
            this.tv_user_coppers.setText("--");
            this.tv_user_member.setText("--");
            this.tv_user_svip.setText("---");
            this.tv_user_rank.setText("");
            this.tv_user_rank.setVisibility(8);
            this.ll_members.setOnClickListener(null);
            this.ll_svip.setOnClickListener(null);
            AccountBean accountBean = this.accountBean;
            if (accountBean != null) {
                this.tv_user_nickname.setText(accountBean.getNickname());
                MyImageLoader.s(this.iv_user_avatar, this.accountBean.getAvatarSrc());
                MyImageLoader.s(this.iv_user_avatar2, this.accountBean.getAvatarSrc());
                if (this.accountBean.getVip_level() == 1) {
                    calculateVIPExpTime();
                } else {
                    UserCenterBean userCenterBean = this.userCenterBeans;
                    if (userCenterBean != null && (join_member = userCenterBean.getJoin_member()) != null) {
                        this.tv_user_member.setText(join_member.getSubTitle());
                        this.vipTime.setText(join_member.getSubTitle());
                    }
                    this.iv_user_vip.setVisibility(8);
                }
                if (this.accountBean.getVip_level() == 1 && this.accountBean.getMember_title() != null && !TextUtils.isEmpty(this.accountBean.getMember_title().getBattleTitle())) {
                    this.tv_user_rank.setVisibility(0);
                    this.tv_user_rank.setText(this.accountBean.getMember_title().getBattleTitle());
                }
                if (this.accountBean.getAccount_type() == 2) {
                    this.tv_user_account.setTextColor(Color.parseColor("#F47500"));
                    this.tv_user_account.setText("完善资料 / 领礼包 / 抢红包");
                    this.tv_user_account.setTextSize(13.0f);
                    this.tv_user_account.setBackgroundResource(R.drawable.account_msg_bg);
                } else {
                    this.tv_user_account.setPadding(0, 0, 0, 0);
                    this.tv_user_account.setBackgroundDrawable(null);
                    this.tv_user_account.setTextSize(14.0f);
                    this.tv_user_account.setTextColor(Color.parseColor("#A9A9A9"));
                    this.tv_user_account.setText(this.accountBean.getAccount());
                }
            } else {
                this.iv_user_vip.setVisibility(8);
            }
            UserCenterBean userCenterBean2 = this.userCenterBeans;
            if (userCenterBean2 != null && (member_func = userCenterBean2.getMember_func()) != null) {
                if (member_func.size() >= 0) {
                    UserCenterBean.TitleItemBean titleItemBean = member_func.get(0);
                    this.ll_copperTitle.setText(titleItemBean.getTitle());
                    this.tv_user_coppers.setText(titleItemBean.getSubTitle());
                }
                if (member_func.size() >= 1) {
                    UserCenterBean.TitleItemBean titleItemBean2 = member_func.get(1);
                    this.onekeyTitle.setText(titleItemBean2.getTitle());
                    this.onekeyMessage.setText(titleItemBean2.getSubTitle());
                }
                if (member_func.size() >= 2) {
                    UserCenterBean.TitleItemBean titleItemBean3 = member_func.get(2);
                    this.svipTitle.setText(titleItemBean3.getTitle());
                    this.tv_user_svip.setText(titleItemBean3.getSubTitle());
                }
            }
            this.ll_members.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.UsercenterFragmentNew.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    UserCenterBean.TitleItemBean join_member2;
                    UserCenterBean userCenterBean3 = UsercenterFragmentNew.this.userCenterBeans;
                    if (userCenterBean3 == null || (join_member2 = userCenterBean3.getJoin_member()) == null) {
                        return;
                    }
                    IntentUtil.getInstance().goShareWebActivity(UsercenterFragmentNew.this.mActivity, join_member2.getJumpUrl());
                }
            });
            this.ll_svip.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.UsercenterFragmentNew.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (UsercenterFragmentNew.this.userCenterBeans == null) {
                        return;
                    }
                    IntentDateBean intentDateBean = new IntentDateBean();
                    intentDateBean.setLink_type(4);
                    List<UserCenterBean.TitleItemBean> member_func2 = UsercenterFragmentNew.this.userCenterBeans.getMember_func();
                    if (member_func2 != null && member_func2.size() > 2) {
                        intentDateBean.setLink_type_val(member_func2.get(2).getJumpUrl());
                    }
                    ShareWebActivity_.O2(view.getContext()).b(intentDateBean).start();
                }
            });
            this.iv_user_avatar.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.UsercenterFragmentNew.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (UsercenterFragmentNew.this.goLogin()) {
                        return;
                    }
                    CommentSelfListActivity_.n1(view.getContext()).a(UsercenterFragmentNew.this.accountBean.getUid()).start();
                }
            });
            this.iv_user_avatar2.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.UsercenterFragmentNew.6
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (UsercenterFragmentNew.this.goLogin()) {
                        return;
                    }
                    CommentSelfListActivity_.n1(view.getContext()).a(UsercenterFragmentNew.this.accountBean.getUid()).start();
                }
            });
            this.iv_arrow.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.UsercenterFragmentNew.7
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (UsercenterFragmentNew.this.goLogin()) {
                        return;
                    }
                    CommentSelfListActivity_.n1(view.getContext()).a(UsercenterFragmentNew.this.accountBean.getUid()).start();
                }
            });
            this.ll_userinfo.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.UsercenterFragmentNew.8
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (UsercenterFragmentNew.this.goLogin()) {
                        return;
                    }
                    CommentSelfListActivity_.n1(view.getContext()).a(UsercenterFragmentNew.this.accountBean.getUid()).start();
                }
            });
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void showNotif() {
        showNotifUi();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showNotifUi() {
        View childAt;
        try {
            MyAdapter myAdapter = this.mAdapter;
            if (myAdapter != null) {
                myAdapter.setTotalnum(MApplication.H);
                this.mAdapter.notifyDataSetChanged();
            }
            GridView gridView = this.mGridView;
            if (gridView == null || (childAt = gridView.getChildAt(0)) == null || !(childAt.getTag() instanceof MyAdapter.ViewHolder)) {
                return;
            }
            MyAdapter.ViewHolder viewHolder = (MyAdapter.ViewHolder) childAt.getTag();
            viewHolder.messageBadge.setVisibility(8);
            if (AccountUtil_.getInstance_(this.mActivity).isTourist() || MApplication.H <= 0) {
                return;
            }
            viewHolder.messageBadge.setVisibility(0);
            if (MApplication.H > 99) {
                viewHolder.messageBadge.setText("+99");
                return;
            }
            TextView textView = viewHolder.messageBadge;
            textView.setText("" + MApplication.H);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String str) {
        if (isActivityFinish()) {
            return;
        }
        i2.a(this.mActivity).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void test() {
        if (com.join.android.app.common.http.c.f17006c) {
            IntentUtil.getInstance().goShareWebActivity(getContext(), "http://apphd.5fun.net/static/papa_url_demo/index.html");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void tokenFailure() {
        showToast(getString(R.string.pay_token_fail));
        AccountUtil_.getInstance_(this.mActivity).accountLoginOut(this.mActivity);
        touristLogin();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void touristLogin() {
        if (com.join.android.app.common.utils.f.j(this.mActivity)) {
            MApplication.H = 0;
            if (isLogined()) {
                return;
            }
            try {
                TouristLoginRequestBean touristLoginRequestBean = new TouristLoginRequestBean();
                touristLoginRequestBean.setVersion(j.n(this.mActivity).z());
                touristLoginRequestBean.setDevice_id("");
                touristLoginRequestBean.setMac("");
                touristLoginRequestBean.setSource(PayCenterOrderRequest.PAY_TYPE_RECHARGE);
                touristLoginRequestBean.setTuid(this.prefDef.touriseTUID().d().longValue());
                touristLoginRequestBean.setSign(u1.f(touristLoginRequestBean));
                AccountUtil_.getInstance_(getContext()).setLocalUserIcon("");
                AccountResultMainBean<AccountTokenSuccess> s3 = this.rpcAccountClient.s(touristLoginRequestBean.getParams());
                if (s3 != null && s3.getError() == 0) {
                    if (s3.getData().is_success()) {
                        AccountBean user_info = s3.getData().getUser_info();
                        if (user_info != null) {
                            AccountUtil_.getInstance_(this.mActivity).saveAccountData(user_info, this.mActivity);
                        }
                        this.isGetingUserInfo = false;
                        refreshViews();
                        getUserInfo();
                        return;
                    }
                    this.isGetingUserInfo = false;
                    showToast(s3.getData().getError_msg());
                    loadViewConfigsFromLocal();
                    return;
                }
                this.isGetingUserInfo = false;
                loadViewConfigsFromLocal();
                return;
            } catch (Exception e4) {
                this.isGetingUserInfo = false;
                e4.printStackTrace();
                loadViewConfigsFromLocal();
                return;
            }
        }
        this.isGetingUserInfo = false;
        loadViewConfigsFromLocal();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateAdapterByNewMsgCount(int i2) {
        if (i2 < 1 || this.mActivity == null) {
            return;
        }
        synchronized (this.mUserCenterDatas) {
            int i4 = -1;
            List<UserCenterBean.UserCenterItem> list = this.mUserCenterDatas;
            if (list == null) {
                return;
            }
            int size = list.size();
            int i5 = 0;
            while (true) {
                if (i5 >= size) {
                    break;
                }
                UserCenterBean.UserCenterItem userCenterItem = this.mUserCenterDatas.get(i5);
                if (userCenterItem.getSub() != null) {
                    JumpInfoBean jumpInfoBean = userCenterItem.getSub().get(0);
                    int parseInt = Integer.parseInt(jumpInfoBean.getJump_type());
                    if (Integer.parseInt(jumpInfoBean.getLink_type()) == 3 && parseInt == 15) {
                        i4 = i5;
                        break;
                    }
                }
                i5++;
            }
            if (i4 >= 0) {
                this.mUserCenterDatas.get(i4).setUnReadCount(i2);
            }
            this.mAdapter.notifyDataSetChanged();
            showNotifUi();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateDownloadView() {
        int size = this.downloadedMap.size();
        int size2 = this.downloadingMap.size();
        CustomerDownloadView customerDownloadView = this.downloadView1;
        if (customerDownloadView != null) {
            customerDownloadView.setDownloadGameNum(size);
        }
        CustomerDownloadView customerDownloadView2 = this.downloadView2;
        if (customerDownloadView2 != null) {
            customerDownloadView2.setDownloadGameNum(size);
        }
        if (size2 > 0) {
            CustomerDownloadView customerDownloadView3 = this.downloadView1;
            if (customerDownloadView3 != null) {
                customerDownloadView3.d();
            }
            CustomerDownloadView customerDownloadView4 = this.downloadView2;
            if (customerDownloadView4 != null) {
                customerDownloadView4.d();
                return;
            }
            return;
        }
        CustomerDownloadView customerDownloadView5 = this.downloadView1;
        if (customerDownloadView5 != null) {
            customerDownloadView5.g();
        }
        CustomerDownloadView customerDownloadView6 = this.downloadView2;
        if (customerDownloadView6 != null) {
            customerDownloadView6.g();
        }
    }

    @Receiver(actions = {f1.a.B})
    public void updateInfo(Context context) {
        this.accountBean = AccountUtil_.getInstance_(this.mActivity).getAccountData();
        refreshUserCenter();
    }

    List<UserCenterBean.UserCenterItem> wrapDatas(UserCenterBean userCenterBean, int i2) {
        ArrayList arrayList = new ArrayList();
        try {
            List<UserCenterBean.UserCenterItem> first_group = userCenterBean.getFirst_group();
            if (first_group != null && i2 == 0) {
                arrayList.addAll(first_group);
                int size = first_group.size() % 4;
                if (size != 0) {
                    size = 4 - size;
                }
                addPlaceHolder(arrayList, size);
            }
            List<UserCenterBean.UserCenterItem> second_group = userCenterBean.getSecond_group();
            if (second_group != null && i2 == 1) {
                arrayList.addAll(second_group);
                int size2 = second_group.size() % 4;
                if (size2 != 0) {
                    size2 = 4 - size2;
                }
                addPlaceHolder(arrayList, size2);
            }
            if (userCenterBean.getThird_group() != null && i2 == 2) {
                arrayList.addAll(userCenterBean.getThird_group());
                int size3 = userCenterBean.getThird_group().size() % 4;
                if (size3 != 0) {
                    size3 = 4 - size3;
                }
                addPlaceHolder(arrayList, size3);
            }
            return arrayList;
        } catch (Exception e4) {
            e4.printStackTrace();
            return arrayList;
        }
    }

    private boolean isLogined() {
        AccountBean accountData = AccountUtil_.getInstance_(this.mActivity).getAccountData();
        return accountData != null && d2.i(accountData.getToken());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(l lVar) {
        changeDownloadTaskNumber(lVar.a(), lVar.c());
    }
}
