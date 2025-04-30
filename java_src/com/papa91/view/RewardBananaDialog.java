package com.papa91.view;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.drawable.AnimationDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.NonNull;
import com.papa91.activity.EmuBaseActivity;
import com.papa91.arc.MarketUtil;
import com.papa91.arc.MyJson;
import com.papa91.mix.R;
import com.papa91.utils.HttpUtils;
import com.yatoooon.screenadaptation.e;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.HttpResponse;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class RewardBananaDialog extends BaseDialog implements View.OnClickListener {
    private int amount;
    View close;
    TextView count;
    View countGroup;
    int countTime;
    private String device_id;
    View doubleReward;
    TextView doubleRewardText;
    private String gameId;
    View getTip;
    View gift;
    private int left_count;
    OnRewardBananaListener listener;
    Handler mHandler;
    View receive;
    TextView remain;
    View textView2;
    View textView31;
    private int times;
    private String token;
    private int total_reward_amount;
    private int type;
    private String uid;
    private String uniqueId;

    /* loaded from: classes4.dex */
    public interface OnRewardBananaListener {
        void onDoubleReward(String str, int i2, int i4, int i5, String str2);

        void onReceiveReward(String str, int i2, int i4, int i5, String str2);

        void onRewardInfo(String str, int i2, int i4, int i5, int i6);
    }

    public RewardBananaDialog(@NonNull Context context) {
        super(context);
        this.countTime = 5;
        this.mHandler = new Handler() { // from class: com.papa91.view.RewardBananaDialog.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                RewardBananaDialog rewardBananaDialog = RewardBananaDialog.this;
                View view = rewardBananaDialog.close;
                if (view instanceof TextView) {
                    TextView textView = (TextView) view;
                    int i2 = rewardBananaDialog.countTime - 1;
                    rewardBananaDialog.countTime = i2;
                    if (i2 <= 0) {
                        textView.setText("");
                        textView.setBackgroundResource(R.drawable.ic_colse_gray);
                        return;
                    }
                    textView.setText(RewardBananaDialog.this.countTime + "");
                    textView.setBackgroundResource(R.drawable.shape_close_bg_gray);
                    RewardBananaDialog.this.mHandler.sendEmptyMessageDelayed(0, 1000L);
                }
            }
        };
    }

    void error(final String str) {
        this.mHandler.post(new Runnable() { // from class: com.papa91.view.RewardBananaDialog.5
            @Override // java.lang.Runnable
            public void run() {
                Toast.makeText(RewardBananaDialog.this.getContext(), str, 0).show();
            }
        });
    }

    void getRewardInfo() {
        getRewardInfo(this.uid, this.token, this.gameId, this.device_id, this.uniqueId);
    }

    void getRewardInfoPost(final Map<String, String> map) {
        new Thread(new Runnable() { // from class: com.papa91.view.RewardBananaDialog.3
            void onError(int i2, String str) {
                if (i2 != -1) {
                    RewardBananaDialog.this.error(str);
                }
            }

            void onResponse(String str) {
                try {
                    MyJson myJson = new MyJson(str);
                    int i2 = myJson.getInt("error", 0);
                    String string = myJson.getString("msg");
                    if (i2 != 0) {
                        onError(i2, string);
                        return;
                    }
                    JSONObject jSONObject = myJson.getJSONObject("data", null);
                    if (jSONObject != null) {
                        RewardBananaDialog.this.onRewardInfo(jSONObject.has("unique_id") ? jSONObject.getString("unique_id") : "", jSONObject.has("reward_times") ? jSONObject.getInt("reward_times") : 0, jSONObject.has("reward_amount") ? jSONObject.getInt("reward_amount") : 0, Math.min(jSONObject.has("left_play_reward_count") ? jSONObject.getInt("left_play_reward_count") : 0, jSONObject.has("left_device_play_reward_count") ? jSONObject.getInt("left_device_play_reward_count") : 0), jSONObject.has("left_start_reward_count") ? jSONObject.getInt("left_start_reward_count") : 0, jSONObject.has("total_reward_amount") ? jSONObject.getInt("total_reward_amount") : 0);
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }

            @Override // java.lang.Runnable
            public void run() {
                String str = HttpUtils.REWARD_CONFIG_URL + "/user/activity/banana_peel/get_reward_info";
                DefaultHttpClient defaultHttpClient = new DefaultHttpClient();
                try {
                    HttpPost httpPost = new HttpPost(str);
                    ArrayList arrayList = new ArrayList();
                    Map map2 = map;
                    if (map2 != null) {
                        for (Map.Entry entry : map2.entrySet()) {
                            arrayList.add(new BasicNameValuePair((String) entry.getKey(), (String) entry.getValue()));
                        }
                    }
                    httpPost.setEntity(new UrlEncodedFormEntity(arrayList, "utf-8"));
                    HttpResponse execute = defaultHttpClient.execute(httpPost);
                    if (execute.getStatusLine().getStatusCode() == 200) {
                        InputStream content = execute.getEntity().getContent();
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        byte[] bArr = new byte[1024];
                        while (true) {
                            int read = content.read(bArr);
                            if (read != -1) {
                                byteArrayOutputStream.write(bArr, 0, read);
                            } else {
                                String str2 = new String(byteArrayOutputStream.toByteArray());
                                content.close();
                                onResponse(str2);
                                return;
                            }
                        }
                    } else {
                        onError(-1, "");
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                    onError(-1, "");
                }
            }
        }).start();
    }

    public void giveUpReceive(int i2) {
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.close) {
            if (this.close instanceof TextView) {
                if (this.countTime <= 0) {
                    dismiss();
                    String str = "";
                    if (!TextUtils.isEmpty(this.uniqueId)) {
                        str = this.amount + "";
                    }
                    Toast.makeText(view.getContext(), "已放弃领取" + str + "香蕉", 0).show();
                    giveUpReceive(this.amount);
                    return;
                }
                return;
            }
            dismiss();
        } else if (id == R.id.gift) {
            MarketUtil.intent(view.getContext(), "4", "", HttpUtils.REWARD_CONFIG_URL + "/user/activity/banana_peel/exchange_center", "", "");
        } else if (id == R.id.receive) {
            if (TextUtils.isEmpty(this.uniqueId)) {
                Toast.makeText(view.getContext(), "香蕉正在采摘中，请稍后~", 0).show();
                return;
            }
            OnRewardBananaListener onRewardBananaListener = this.listener;
            if (onRewardBananaListener != null) {
                onRewardBananaListener.onReceiveReward(this.uniqueId, this.amount, this.times, this.type, this.gameId);
            }
            dismiss();
        } else if (id == R.id.doubleReward) {
            if (TextUtils.isEmpty(this.uniqueId)) {
                Toast.makeText(view.getContext(), "香蕉正在采摘中，请稍后~", 0).show();
                return;
            }
            OnRewardBananaListener onRewardBananaListener2 = this.listener;
            if (onRewardBananaListener2 != null) {
                onRewardBananaListener2.onDoubleReward(this.uniqueId, this.amount, this.times, this.type, this.gameId);
            }
            dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa91.view.BaseDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setCanceledOnTouchOutside(false);
        setContentView(R.layout.dialog_receive_banana);
        this.close = findViewById(R.id.close);
        this.gift = findViewById(R.id.gift);
        this.receive = findViewById(R.id.receive);
        this.doubleReward = findViewById(R.id.doubleReward);
        int i2 = R.id.count;
        this.count = (TextView) findViewById(i2);
        this.textView31 = findViewById(R.id.textView31);
        this.textView2 = findViewById(R.id.textView2);
        this.count = (TextView) findViewById(i2);
        this.remain = (TextView) findViewById(R.id.remain);
        this.doubleRewardText = (TextView) findViewById(R.id.doubleRewardText);
        this.countGroup = findViewById(R.id.countGroup);
        this.getTip = findViewById(R.id.getTip);
        ImageView imageView = (ImageView) findViewById(R.id.imageView2);
        if (imageView != null) {
            imageView.setImageResource(R.drawable.gif_cd_animation);
            ((AnimationDrawable) imageView.getDrawable()).start();
        }
        this.close.setOnClickListener(this);
        this.gift.setOnClickListener(this);
        this.receive.setOnClickListener(this);
        this.doubleReward.setOnClickListener(this);
        setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.papa91.view.RewardBananaDialog.2
            @Override // android.content.DialogInterface.OnKeyListener
            public boolean onKey(DialogInterface dialogInterface, int i4, KeyEvent keyEvent) {
                return i4 == 4 && keyEvent.getRepeatCount() == 0;
            }
        });
    }

    void onRewardInfo(final String str, final int i2, final int i4, final int i5, final int i6, final int i7) {
        this.mHandler.post(new Runnable() { // from class: com.papa91.view.RewardBananaDialog.4
            @Override // java.lang.Runnable
            public void run() {
                if (RewardBananaDialog.this.type == 1) {
                    RewardBananaDialog.this.left_count = i6;
                } else {
                    RewardBananaDialog.this.left_count = i5;
                }
                RewardBananaDialog.this.times = i2;
                RewardBananaDialog.this.amount = i4;
                RewardBananaDialog.this.total_reward_amount = i7;
                RewardBananaDialog rewardBananaDialog = RewardBananaDialog.this;
                rewardBananaDialog.onRewardInfoChanged(rewardBananaDialog.uniqueId, str, i4, i2, RewardBananaDialog.this.total_reward_amount);
                RewardBananaDialog.this.uniqueId = str;
                RewardBananaDialog rewardBananaDialog2 = RewardBananaDialog.this;
                OnRewardBananaListener onRewardBananaListener = rewardBananaDialog2.listener;
                if (onRewardBananaListener != null) {
                    onRewardBananaListener.onRewardInfo(str, i4, i2, rewardBananaDialog2.left_count, RewardBananaDialog.this.total_reward_amount);
                }
                RewardBananaDialog.this.refresh();
            }
        });
    }

    void onRewardInfoChanged(String str, String str2, int i2, int i4, int i5) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || str.equals(str2)) {
            return;
        }
        Intent intent = new Intent("com.join.android.app.mgsim.wufun.broadcast.reward.changed");
        intent.putExtra("uniqueId", str);
        intent.putExtra("newUniqueId", str2);
        intent.putExtra("gameId", this.gameId);
        intent.putExtra("amount", i2);
        intent.putExtra("times", i4);
        intent.putExtra("type", this.type);
        intent.putExtra("total_reward_amount", i5);
        intent.putExtra("uid", this.uid);
        intent.putExtra("packageName", EmuBaseActivity.getHostPackageName());
        try {
            intent.addFlags(32);
            EmuBaseActivity.send(intent);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void refresh() {
        if (TextUtils.isEmpty(this.uniqueId)) {
            this.countGroup.setVisibility(4);
            this.textView2.setVisibility(4);
            this.textView31.setVisibility(4);
            this.count.setVisibility(4);
            this.remain.setVisibility(8);
            this.getTip.setVisibility(0);
            TextView textView = this.doubleRewardText;
            if (textView != null) {
                textView.setText("香蕉 XN倍");
            }
        } else {
            this.countGroup.setVisibility(0);
            this.textView2.setVisibility(0);
            this.textView31.setVisibility(0);
            this.count.setVisibility(0);
            this.getTip.setVisibility(4);
            this.remain.setVisibility(0);
            TextView textView2 = this.doubleRewardText;
            if (textView2 != null) {
                textView2.setText("香蕉 X" + this.times + "倍");
            }
        }
        TextView textView3 = this.count;
        if (textView3 != null) {
            textView3.setText(this.amount + "");
        }
        TextView textView4 = this.remain;
        if (textView4 != null) {
            if (this.type == 1) {
                textView4.setText("今日剩余" + this.left_count + "次奖励");
                return;
            }
            textView4.setText("累计获得香蕉" + this.total_reward_amount + "个");
        }
    }

    public void setAccount(String str, String str2, String str3) {
        this.uid = str;
        this.token = str2;
        this.device_id = str3;
    }

    public void setData(String str, int i2, int i4, int i5, String str2) {
        this.uniqueId = str;
        this.amount = i2;
        this.times = i4;
        this.type = i5;
        this.gameId = str2;
        if (i5 != 1) {
            this.uniqueId = "";
            str = "";
        }
        refresh();
        if (i2 == 0 || i4 == 0 || TextUtils.isEmpty(str)) {
            getRewardInfo();
        }
    }

    public void setListener(OnRewardBananaListener onRewardBananaListener) {
        this.listener = onRewardBananaListener;
    }

    @Override // com.papa91.view.BaseDialog, android.app.Dialog
    public void show() {
        e.a().f(getWindow().getDecorView());
        super.show();
        if (getContext().getResources().getConfiguration().orientation == 2) {
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.gravity = 17;
            attributes.width = -1;
            attributes.height = -1;
            getWindow().getDecorView().setPadding(0, 0, 0, 0);
            getWindow().setAttributes(attributes);
        }
        View view = this.close;
        if (view instanceof TextView) {
            TextView textView = (TextView) view;
            this.countTime = 5;
            textView.setText(this.countTime + "");
            textView.setBackgroundResource(R.drawable.shape_close_bg_gray);
            startCloseTimeCount();
        }
    }

    void startCloseTimeCount() {
        this.mHandler.sendEmptyMessageDelayed(0, 1000L);
    }

    void getRewardInfo(String str, String str2, String str3, String str4, String str5) {
        HashMap hashMap = new HashMap();
        hashMap.put("uid", str);
        hashMap.put("token", str2);
        hashMap.put("game_id", str3);
        hashMap.put("device_id", str4);
        hashMap.put("unique_id", str5);
        getRewardInfoPost(hashMap);
    }

    public RewardBananaDialog(@NonNull Context context, int i2) {
        super(context, i2);
        this.countTime = 5;
        this.mHandler = new Handler() { // from class: com.papa91.view.RewardBananaDialog.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                RewardBananaDialog rewardBananaDialog = RewardBananaDialog.this;
                View view = rewardBananaDialog.close;
                if (view instanceof TextView) {
                    TextView textView = (TextView) view;
                    int i22 = rewardBananaDialog.countTime - 1;
                    rewardBananaDialog.countTime = i22;
                    if (i22 <= 0) {
                        textView.setText("");
                        textView.setBackgroundResource(R.drawable.ic_colse_gray);
                        return;
                    }
                    textView.setText(RewardBananaDialog.this.countTime + "");
                    textView.setBackgroundResource(R.drawable.shape_close_bg_gray);
                    RewardBananaDialog.this.mHandler.sendEmptyMessageDelayed(0, 1000L);
                }
            }
        };
    }

    public void setData(int i2, String str, int i4, int i5, int i6, String str2, int i7) {
        this.uniqueId = str;
        this.left_count = i2;
        this.total_reward_amount = i7;
        this.amount = i4;
        this.times = i5;
        this.type = i6;
        this.gameId = str2;
        if (i6 != 1) {
            this.uniqueId = "";
            str = "";
        }
        refresh();
        if (i4 == 0 || i5 == 0 || TextUtils.isEmpty(str)) {
            getRewardInfo();
        }
    }
}
