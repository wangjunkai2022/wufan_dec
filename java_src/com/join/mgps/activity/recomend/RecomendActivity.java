package com.join.mgps.activity.recomend;

import android.content.Context;
import android.graphics.Color;
import android.os.Build;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.BaseAppCompatActivity;
import com.MApplication;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.http.PointSendUtile;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.common.utils.a;
import com.join.android.app.common.utils.f;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.d2;
import com.join.mgps.Util.i2;
import com.join.mgps.Util.w;
import com.join.mgps.Util.x;
import com.join.mgps.activity.arena.GameRoomActivity;
import com.join.mgps.dialog.DownloadMethodPromptDialog_;
import com.join.mgps.dto.AppBean;
import com.join.mgps.dto.CommonRequestMessage;
import com.join.mgps.dto.RequestTypePn;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.rpc.d;
import com.join.mgps.rpc.impl.c;
import com.join.mgps.service.CommonService_;
import com.papa.sim.statistic.pref.b;
import com.papa91.arc.bean.ButtonBean;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
@EActivity(R.layout.recoment_activity_layout)
/* loaded from: classes3.dex */
public class RecomendActivity extends BaseAppCompatActivity {
    CommentAdapter adapter;
    List<RecomentBean> allData;
    Context context;
    @ViewById
    TextView enterGame;
    @ViewById
    ImageView lodingImg;
    @Pref
    PrefDef_ prefDef;
    @ViewById
    View protocol;
    @ViewById
    View protocolCheck;
    @ViewById
    RecyclerView recycleView;
    d rpcClient;
    @ViewById
    TextView title;
    @ViewById
    TextView userProtocolTxt;
    int loadDataType = 1;
    int selectedNumber = 0;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class ClickSpan extends ClickableSpan {
        private String url;

        public ClickSpan(String str) {
            this.url = str;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View view) {
            IntentUtil.getInstance().goShareWebActivity(view.getContext(), this.url);
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            textPaint.setColor(textPaint.linkColor);
            textPaint.bgColor = Color.parseColor("#ffffff");
            textPaint.setUnderlineText(false);
            textPaint.clearShadowLayer();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class CommentAdapter extends RecyclerView.Adapter<CommentHolder> {
        CommentAdapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return RecomendActivity.this.allData.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(final CommentHolder commentHolder, int i2) {
            try {
                final RecomentBean recomentBean = RecomendActivity.this.allData.get(i2);
                commentHolder.appName.setText(recomentBean.getGame_info().getGame_name());
                if (d2.h(recomentBean.getTag())) {
                    commentHolder.appTag.setVisibility(8);
                } else {
                    commentHolder.appTag.setText(recomentBean.getTag());
                }
                commentHolder.appType.setText(recomentBean.getGame_info().getSp_tag_info().getModel().getName());
                if (!TextUtils.isEmpty(recomentBean.getSource_url())) {
                    commentHolder.content.setText(recomentBean.getSource_url());
                } else {
                    commentHolder.content.setText(recomentBean.getGame_info().getInfo());
                }
                MyImageLoader.d(commentHolder.appIcon, R.drawable.main_normal_icon, recomentBean.getGame_info().getIco_remote());
                if (recomentBean.getIs_select() == 1) {
                    commentHolder.selectbutn.setImageResource(R.drawable.comment_selected);
                } else {
                    commentHolder.selectbutn.setImageResource(R.drawable.comment_selecte_normal);
                }
                commentHolder.main.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.recomend.RecomendActivity.CommentAdapter.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        if (recomentBean.getIs_select() == 1) {
                            recomentBean.setIs_select(0);
                            commentHolder.selectbutn.setImageResource(R.drawable.comment_selecte_normal);
                            RecomendActivity.this.selectedNumber--;
                        } else {
                            recomentBean.setIs_select(1);
                            commentHolder.selectbutn.setImageResource(R.drawable.comment_selected);
                            RecomendActivity.this.selectedNumber++;
                        }
                        RecomendActivity.this.refreshEnterGame();
                    }
                });
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public CommentHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
            return new CommentHolder(LayoutInflater.from(RecomendActivity.this.context).inflate(R.layout.comment_list_item_layout, viewGroup, false));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class CommentHolder extends RecyclerView.ViewHolder {
        SimpleDraweeView appIcon;
        TextView appName;
        TextView appTag;
        TextView appType;
        TextView content;
        LinearLayout main;
        ImageView selectbutn;

        public CommentHolder(View view) {
            super(view);
            this.appIcon = (SimpleDraweeView) view.findViewById(R.id.appIcon);
            this.appName = (TextView) view.findViewById(R.id.appName);
            this.appType = (TextView) view.findViewById(R.id.appType);
            this.appTag = (TextView) view.findViewById(R.id.appTag);
            this.content = (TextView) view.findViewById(R.id.content);
            this.selectbutn = (ImageView) view.findViewById(R.id.selectbutn);
            this.main = (LinearLayout) view.findViewById(R.id.main);
        }
    }

    public static void sortIntMethod(List list) {
        Collections.sort(list, new Comparator() { // from class: com.join.mgps.activity.recomend.RecomendActivity.2
            @Override // java.util.Comparator
            public int compare(Object obj, Object obj2) {
                RecomentBean recomentBean = (RecomentBean) obj;
                RecomentBean recomentBean2 = (RecomentBean) obj2;
                if (recomentBean.getIndex() > recomentBean2.getIndex()) {
                    return 1;
                }
                return recomentBean.getIndex() == recomentBean2.getIndex() ? 0 : -1;
            }
        });
    }

    private void updateGameUi(SimpleDraweeView simpleDraweeView, TextView textView, RecomentBean recomentBean) {
        MyImageLoader.d(simpleDraweeView, R.drawable.main_normal_icon, recomentBean.getGame_info().getIco_remote());
        textView.setText(recomentBean.getGame_info().getGame_name());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterView() {
        this.context = getApplicationContext();
        if (Build.VERSION.SDK_INT >= 19) {
            getWindow().addFlags(67108864);
        }
        this.enterGame.setBackgroundResource(R.drawable.grey_btn_normal);
        this.rpcClient = c.P1();
        this.protocolCheck.setSelected(true);
        this.allData = new ArrayList();
        this.recycleView.setLayoutManager(new LinearLayoutManager(this.context));
        CommentAdapter commentAdapter = new CommentAdapter();
        this.adapter = commentAdapter;
        this.recycleView.setAdapter(commentAdapter);
        this.title.setVisibility(4);
        this.enterGame.setVisibility(4);
        getData();
        if (ContextCompat.checkSelfPermission(this.context, "android.permission.READ_PHONE_STATE") == 0 || x.t(this.prefDef.lastApplyReadPhonePermissionOnRecom().d().longValue())) {
            return;
        }
        this.prefDef.lastApplyReadPhonePermission().g(Long.valueOf(System.currentTimeMillis()));
        this.prefDef.lastApplyReadPhonePermissionOnRecom().g(Long.valueOf(System.currentTimeMillis()));
        UtilsMy.c2(this.context, "android.permission.READ_PHONE_STATE");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 3000)
    public void delayRequest() {
        getData();
    }

    void down() {
        downv2(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void downv2(boolean z3) {
        if (!this.protocolCheck.isSelected() || this.selectedNumber == 0) {
            return;
        }
        ArrayList<RecomentBean> arrayList = new ArrayList();
        for (RecomentBean recomentBean : this.allData) {
            if (recomentBean.getIs_select() == 1) {
                if (z3) {
                    try {
                        if (recomentBean.getGame_info().getSp_tag_info().getModel().getId().equals("7")) {
                            arrayList.add(recomentBean);
                        }
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                } else {
                    arrayList.add(recomentBean);
                }
            }
        }
        sortIntMethod(arrayList);
        try {
            Thread.sleep(1500L);
        } catch (Exception e5) {
            e5.printStackTrace();
        }
        for (RecomentBean recomentBean2 : arrayList) {
            AppBean game_info = recomentBean2.getGame_info();
            game_info.set_from(112);
            try {
                Thread.sleep(1000L);
            } catch (Exception e6) {
                e6.printStackTrace();
            }
            if (game_info.getMod_info() == null) {
                if (!a.g0(this.context).c(this.context, game_info.getPackageName())) {
                    DownloadTask downloadtaskDown = game_info.getDownloadtaskDown();
                    downloadtaskDown.setUncheckSelfSupport(true);
                    downloadtaskDown.setFromRecomDown(true);
                    downloadtaskDown.setDisableShowSpeedUpPrompt(true);
                    ((CommonService_.u1) ((CommonService_.u1) CommonService_.d2(this.context).extra("downGameIdNotSelfSupport", downloadtaskDown.getCrc_link_type_val())).extra("downloadTask", downloadtaskDown)).a();
                    PointSendUtile.sendPoint(this.context, downloadtaskDown.getCrc_link_type_val());
                }
            } else {
                ((CommonService_.u1) ((CommonService_.u1) ((CommonService_.u1) CommonService_.d2(this.context).extra("gameDownloadDetail", game_info.getMod_info().getMod_game_id())).extra(DownloadMethodPromptDialog_.F, game_info.get_from())).extra(DownloadMethodPromptDialog_.G, game_info.get_from_type())).a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void enterGame() {
        String str;
        boolean z3;
        b.j(this.context).D(true);
        List<RecomentBean> list = this.allData;
        if (list == null || list.size() == 0) {
            return;
        }
        if (!this.protocolCheck.isSelected() || this.selectedNumber == 0) {
            finish();
        }
        try {
            boolean z4 = false;
            if (this.protocolCheck.isSelected()) {
                str = "";
                boolean z5 = false;
                for (RecomentBean recomentBean : this.allData) {
                    if (recomentBean.getIs_select() == 1) {
                        AppBean game_info = recomentBean.getGame_info();
                        if (game_info.getMod_info() != null) {
                            str = "VIRTUAL_SINGLE";
                        }
                        if ("7".equals(game_info.getSp_tag_info().getModel().getId())) {
                            z3 = false;
                        } else {
                            str = "ANDROID_SINGLE";
                            z3 = true;
                        }
                        if (!z3) {
                            z3 = d2.h(game_info.getPlugin_num()) ? false : UtilsMy.H1(Integer.parseInt(game_info.getPlugin_num()));
                            if (z3) {
                                str = UtilsMy.y1(game_info.getPlugin_num()).getDown_type() == 2 ? "SO_SIMULATOR" : "RAW_SIMULATOR";
                            }
                        }
                        z5 = z3;
                        if (z5) {
                            break;
                        }
                    }
                }
                z4 = z5;
            } else {
                str = "";
            }
            try {
                String d4 = new PrefDef_(this.context).androidIdNullsKey().d();
                StringBuilder sb = new StringBuilder();
                sb.append(MApplication.f9241z);
                sb.append("   ");
                sb.append(d4);
                sb.append("   ");
                if (d2.i(d4)) {
                    List list2 = (List) JsonMapper.getInstance().fromJson(d4, List.class);
                    if (d2.i(MApplication.f9241z) && list2.contains(MApplication.f9241z) && z4) {
                        if (IntentUtil.getInstance().goLogin(this.context)) {
                            return;
                        }
                    }
                }
            } catch (Exception unused) {
            }
            boolean booleanValue = new PrefDef_(this.context).download_game_switch().d().booleanValue();
            if (z4 && booleanValue) {
                UtilsMy.p0(this.context, 2, "", str, new GameRoomActivity.x() { // from class: com.join.mgps.activity.recomend.RecomendActivity.1
                    @Override // com.join.mgps.activity.arena.GameRoomActivity.x
                    public void onFail(int i2) {
                    }

                    @Override // com.join.mgps.activity.arena.GameRoomActivity.x
                    public void onSuccess(int i2, int i4) {
                        org.androidannotations.api.sharedpreferences.d isFirstCommendVersion = RecomendActivity.this.prefDef.isFirstCommendVersion();
                        Boolean bool = Boolean.FALSE;
                        isFirstCommendVersion.g(bool);
                        RecomendActivity.this.down();
                        RecomendActivity.this.prefDef.isFirst35().g(bool);
                        RecomendActivity.this.setResult(34343);
                        RecomendActivity.this.finish();
                    }

                    @Override // com.join.mgps.activity.arena.GameRoomActivity.x
                    public void onSuccess(int i2, int i4, ButtonBean buttonBean) {
                        org.androidannotations.api.sharedpreferences.d isFirstCommendVersion = RecomendActivity.this.prefDef.isFirstCommendVersion();
                        Boolean bool = Boolean.FALSE;
                        isFirstCommendVersion.g(bool);
                        RecomendActivity.this.downv2(true);
                        RecomendActivity.this.prefDef.isFirst35().g(bool);
                        RecomendActivity.this.setResult(34343);
                        RecomendActivity.this.finish();
                    }
                });
                return;
            }
            org.androidannotations.api.sharedpreferences.d isFirstCommendVersion = this.prefDef.isFirstCommendVersion();
            Boolean bool = Boolean.FALSE;
            isFirstCommendVersion.g(bool);
            down();
            this.prefDef.isFirst35().g(bool);
            setResult(34343);
            finish();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void finishActivit() {
        this.prefDef.isFirst35().g(Boolean.FALSE);
        setResult(34343);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getData() {
        try {
            if (f.j(this)) {
                ResultMainBean<RecomentBean1> L = this.rpcClient.L(RequestBeanUtil.getInstance(this).getCommentRequestData(new CommonRequestMessage(new RequestTypePn(this.loadDataType, 1))));
                if (L != null && L.getFlag() == 1 && L.getMessages().getData() != null) {
                    RecomentBean1 data = L.getMessages().getData();
                    UserProtocolBean user_protocol = data.getUser_protocol();
                    List<RecomentBean> game_list = data.getGame_list();
                    if (game_list != null) {
                        updateUI(game_list, user_protocol);
                    } else if (game_list.size() == 0) {
                        finishActivit();
                    } else {
                        delayRequest();
                    }
                } else if (L != null && L.getFlag() == 0) {
                    finishActivit();
                } else {
                    delayRequest();
                }
            } else {
                delayRequest();
                showToast("网络异常，请检查网络");
            }
        } catch (Exception e4) {
            e4.printStackTrace();
            delayRequest();
            showToast("获取数据失败请重试");
        }
    }

    @Override // com.BaseAppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.prefDef.isFirstCommendVersion().d().booleanValue()) {
            return;
        }
        this.prefDef.isFirst35().g(Boolean.FALSE);
        setResult(34343);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void protocolCheckPlaceholder() {
        this.protocolCheck.setSelected(!this.protocolCheck.isSelected());
        refreshEnterGame();
    }

    void refreshEnterGame() {
        if (this.selectedNumber != 0 && this.protocolCheck.isSelected()) {
            TextView textView = this.enterGame;
            textView.setText("获取 （" + this.selectedNumber + "款游戏）");
            this.enterGame.setBackgroundResource(R.drawable.comment_installall_back);
            return;
        }
        this.enterGame.setBackgroundResource(R.drawable.grey_btn_normal);
        this.enterGame.setText("进入应用");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String str) {
        i2.a(this).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateUI(List<RecomentBean> list, UserProtocolBean userProtocolBean) {
        if (userProtocolBean != null) {
            this.protocol.setVisibility(0);
            try {
                SpannableString spannableString = new SpannableString(userProtocolBean.getTxt());
                spannableString.setSpan(new ClickSpan(userProtocolBean.getUrl()), spannableString.length() - userProtocolBean.getUrl_txt().length(), spannableString.length(), 17);
                this.userProtocolTxt.setText(spannableString);
                this.userProtocolTxt.setMovementMethod(new w());
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        } else {
            this.protocol.setVisibility(8);
        }
        this.enterGame.setBackgroundResource(R.drawable.comment_installall_back);
        this.title.setVisibility(0);
        this.enterGame.setVisibility(0);
        if (list.size() > 0) {
            this.allData.clear();
            this.allData.addAll(list);
            this.lodingImg.setVisibility(8);
            this.recycleView.setVisibility(0);
        } else {
            delayRequest();
        }
        for (RecomentBean recomentBean : this.allData) {
            if (recomentBean.getIs_select() == 1) {
                this.selectedNumber++;
            }
        }
        refreshEnterGame();
        this.adapter.notifyDataSetChanged();
    }
}
