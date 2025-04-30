package com.join.mgps.activity.login;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.AccountBean;
import g3.a;
import i3.b;
import i3.c;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.builder.f;
/* loaded from: classes3.dex */
public final class ChangeAccountNickNameActivity_ extends ChangeAccountNickNameActivity implements a, i3.a, b {
    private final c onViewChangedNotifier_ = new c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    /* loaded from: classes3.dex */
    public static class IntentBuilder_ extends org.androidannotations.api.builder.a<IntentBuilder_> {
        private Fragment fragmentSupport_;

        public IntentBuilder_(Context context) {
            super(context, ChangeAccountNickNameActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public f startForResult(int i2) {
            Fragment fragment = this.fragmentSupport_;
            if (fragment != null) {
                fragment.startActivityForResult(this.intent, i2);
            } else {
                Context context = this.context;
                if (context instanceof Activity) {
                    ActivityCompat.startActivityForResult((Activity) context, this.intent, i2, this.lastOptions);
                } else {
                    context.startActivity(this.intent);
                }
            }
            return new f(this.context);
        }

        public IntentBuilder_(Fragment fragment) {
            super(fragment.getActivity(), ChangeAccountNickNameActivity_.class);
            this.fragmentSupport_ = fragment;
        }
    }

    private void init_(Bundle bundle) {
        c.b(this);
    }

    public static IntentBuilder_ intent(Context context) {
        return new IntentBuilder_(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.ChangeAccountNickNameActivity
    public void error(final String str) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.login.ChangeAccountNickNameActivity_.6
            @Override // java.lang.Runnable
            public void run() {
                ChangeAccountNickNameActivity_.super.error(str);
            }
        }, 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        c c4 = c.c(this.onViewChangedNotifier_);
        init_(bundle);
        super.onCreate(bundle);
        c.c(c4);
        setContentView(R.layout.change_account_nickname_layout);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.close = aVar.internalFindViewById(R.id.close);
        this.nickNameBution = (TextView) aVar.internalFindViewById(R.id.nickNameBution);
        this.nickName = (EditText) aVar.internalFindViewById(R.id.nickName);
        this.userIcon = (SimpleDraweeView) aVar.internalFindViewById(R.id.userIcon);
        View view = this.close;
        if (view != null) {
            view.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.ChangeAccountNickNameActivity_.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    ChangeAccountNickNameActivity_.this.close();
                }
            });
        }
        SimpleDraweeView simpleDraweeView = this.userIcon;
        if (simpleDraweeView != null) {
            simpleDraweeView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.ChangeAccountNickNameActivity_.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    ChangeAccountNickNameActivity_.this.userIcon();
                }
            });
        }
        TextView textView = this.nickNameBution;
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.ChangeAccountNickNameActivity_.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    ChangeAccountNickNameActivity_.this.nickNameBution();
                }
            });
        }
        afterview();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.beans_.put(cls, t3);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.onViewChangedNotifier_.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.ChangeAccountNickNameActivity
    public void showFinishPage(final AccountBean accountBean) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.login.ChangeAccountNickNameActivity_.4
            @Override // java.lang.Runnable
            public void run() {
                ChangeAccountNickNameActivity_.super.showFinishPage(accountBean);
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.ChangeAccountNickNameActivity
    public void showKeyborad(final EditText editText) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.login.ChangeAccountNickNameActivity_.5
            @Override // java.lang.Runnable
            public void run() {
                ChangeAccountNickNameActivity_.super.showKeyborad(editText);
            }
        }, 600L);
    }

    public static IntentBuilder_ intent(Fragment fragment) {
        return new IntentBuilder_(fragment);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.onViewChangedNotifier_.a(this);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.onViewChangedNotifier_.a(this);
    }
}
