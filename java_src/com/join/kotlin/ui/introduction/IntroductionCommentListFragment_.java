package com.join.kotlin.ui.introduction;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.BbsCommentListBean;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class IntroductionCommentListFragment_ extends IntroductionCommentListFragment implements g3.a, i3.a, i3.b {
    private View contentView_;
    private final i3.c onViewChangedNotifier_ = new i3.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    /* loaded from: classes3.dex */
    public static class FragmentBuilder_ extends org.androidannotations.api.builder.d<FragmentBuilder_, IntroductionCommentListFragment> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // org.androidannotations.api.builder.d
        public IntroductionCommentListFragment build() {
            IntroductionCommentListFragment_ introductionCommentListFragment_ = new IntroductionCommentListFragment_();
            introductionCommentListFragment_.setArguments(this.args);
            return introductionCommentListFragment_;
        }
    }

    public static FragmentBuilder_ builder() {
        return new FragmentBuilder_();
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.introduction.IntroductionCommentListFragment
    public void commitComment(final String str) {
        org.androidannotations.api.a.l(new a.c("", 0L, "") { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment_.25
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    IntroductionCommentListFragment_.super.commitComment(str);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.introduction.IntroductionCommentListFragment
    public void hideLoading() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment_.12
            @Override // java.lang.Runnable
            public void run() {
                IntroductionCommentListFragment_.super.hideLoading();
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.introduction.IntroductionCommentListFragment
    public void hideLoadingDetail() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment_.14
            @Override // java.lang.Runnable
            public void run() {
                IntroductionCommentListFragment_.super.hideLoadingDetail();
            }
        }, 0L);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.contentView_;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    @Override // com.join.kotlin.ui.introduction.IntroductionCommentListFragment
    public void loadCommentDetail(final int i2) {
        org.androidannotations.api.a.l(new a.c("", 0L, "") { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment_.21
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    IntroductionCommentListFragment_.super.loadCommentDetail(i2);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.introduction.IntroductionCommentListFragment
    public void loadData(final int i2) {
        org.androidannotations.api.a.l(new a.c("", 0L, "") { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment_.22
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    IntroductionCommentListFragment_.super.loadData(i2);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.introduction.IntroductionCommentListFragment
    public void loadDataDetail(final int i2) {
        org.androidannotations.api.a.l(new a.c("", 0L, "") { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment_.23
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    IntroductionCommentListFragment_.super.loadDataDetail(i2);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.introduction.IntroductionCommentListFragment
    public void loadDataDetailFromNotice(final int i2) {
        org.androidannotations.api.a.l(new a.c("", 0L, "") { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment_.24
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    IntroductionCommentListFragment_.super.loadDataDetailFromNotice(i2);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.introduction.IntroductionCommentListFragment
    public void onBbsDisPraise(final Integer num, final BbsCommentListBean bbsCommentListBean) {
        org.androidannotations.api.a.l(new a.c("", 0L, "") { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment_.27
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    IntroductionCommentListFragment_.super.onBbsDisPraise(num, bbsCommentListBean);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.introduction.IntroductionCommentListFragment
    public void onBbsPraise(final String str, final Integer num, final BbsCommentListBean bbsCommentListBean) {
        org.androidannotations.api.a.l(new a.c("", 0L, "") { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment_.26
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    IntroductionCommentListFragment_.super.onBbsPraise(str, num, bbsCommentListBean);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.onViewChangedNotifier_);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.contentView_ = onCreateView;
        if (onCreateView == null) {
            this.contentView_ = layoutInflater.inflate(R.layout.fragment_comment_list_introduction, viewGroup, false);
        }
        return this.contentView_;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.contentView_ = null;
        this.rv_list_data = null;
        this.loding_layout = null;
        this.loding_faile = null;
        this.loding_layout_detail = null;
        this.loding_faile_detail = null;
        this.tv_title = null;
        this.et_content = null;
        this.iv_back = null;
        this.rl_comment_detail = null;
        this.rl_comment_list = null;
        this.rv_comment_detail_list = null;
        this.textView2 = null;
        this.ll_empty = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.rv_list_data = (RecyclerView) aVar.internalFindViewById(R.id.rv_list_data);
        this.loding_layout = aVar.internalFindViewById(R.id.loding_layout);
        this.loding_faile = aVar.internalFindViewById(R.id.loding_faile);
        this.loding_layout_detail = aVar.internalFindViewById(R.id.loding_layout_detail);
        this.loding_faile_detail = aVar.internalFindViewById(R.id.loding_faile_detail);
        this.tv_title = (TextView) aVar.internalFindViewById(R.id.tv_title);
        this.et_content = (EditText) aVar.internalFindViewById(R.id.et_content);
        this.iv_back = (ImageView) aVar.internalFindViewById(R.id.iv_back);
        this.rl_comment_detail = (RelativeLayout) aVar.internalFindViewById(R.id.rl_comment_detail);
        this.rl_comment_list = (RelativeLayout) aVar.internalFindViewById(R.id.rl_comment_list);
        this.rv_comment_detail_list = (XRecyclerView) aVar.internalFindViewById(R.id.rv_comment_detail_list);
        this.textView2 = (TextView) aVar.internalFindViewById(R.id.textView2);
        this.ll_empty = (LinearLayout) aVar.internalFindViewById(R.id.ll_empty);
        View internalFindViewById = aVar.internalFindViewById(R.id.setNetwork);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.setNetwork_detail);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.relodingimag);
        View internalFindViewById4 = aVar.internalFindViewById(R.id.relodingimag_detail);
        View internalFindViewById5 = aVar.internalFindViewById(R.id.iv_close);
        View internalFindViewById6 = aVar.internalFindViewById(R.id.tv_commit);
        ImageView imageView = this.iv_back;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment_.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    IntroductionCommentListFragment_.this.onBackClick();
                }
            });
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment_.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    IntroductionCommentListFragment_.this.setNetwork();
                }
            });
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment_.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    IntroductionCommentListFragment_.this.setNetworkDetail();
                }
            });
        }
        if (internalFindViewById3 != null) {
            internalFindViewById3.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment_.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    IntroductionCommentListFragment_.this.relodingimag();
                }
            });
        }
        if (internalFindViewById4 != null) {
            internalFindViewById4.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment_.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    IntroductionCommentListFragment_.this.relodingimagDetail();
                }
            });
        }
        if (internalFindViewById5 != null) {
            internalFindViewById5.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment_.6
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    IntroductionCommentListFragment_.this.onClockClick();
                }
            });
        }
        if (internalFindViewById6 != null) {
            internalFindViewById6.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment_.7
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    IntroductionCommentListFragment_.this.onClickComment();
                }
            });
        }
        aftervidew();
    }

    @Override // com.join.kotlin.ui.introduction.IntroductionCommentListFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.onViewChangedNotifier_.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.beans_.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.introduction.IntroductionCommentListFragment
    public void showDetail(final List<BbsCommentListBean> list, final boolean z3) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment_.10
            @Override // java.lang.Runnable
            public void run() {
                IntroductionCommentListFragment_.super.showDetail(list, z3);
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.introduction.IntroductionCommentListFragment
    public void showEmpty() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment_.15
            @Override // java.lang.Runnable
            public void run() {
                IntroductionCommentListFragment_.super.showEmpty();
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.introduction.IntroductionCommentListFragment
    public void showLoadFailed(final String str) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment_.11
            @Override // java.lang.Runnable
            public void run() {
                IntroductionCommentListFragment_.super.showLoadFailed(str);
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.introduction.IntroductionCommentListFragment
    public void showLoadFailedDetail(final String str) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment_.13
            @Override // java.lang.Runnable
            public void run() {
                IntroductionCommentListFragment_.super.showLoadFailedDetail(str);
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.introduction.IntroductionCommentListFragment
    public void showLoadingView() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment_.16
            @Override // java.lang.Runnable
            public void run() {
                IntroductionCommentListFragment_.super.showLoadingView();
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.introduction.IntroductionCommentListFragment
    public void showLoadingViewDetail() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment_.17
            @Override // java.lang.Runnable
            public void run() {
                IntroductionCommentListFragment_.super.showLoadingViewDetail();
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.introduction.IntroductionCommentListFragment
    public void showMain(final List<BbsCommentListBean> list, final boolean z3) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment_.9
            @Override // java.lang.Runnable
            public void run() {
                IntroductionCommentListFragment_.super.showMain(list, z3);
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.introduction.IntroductionCommentListFragment
    public void showNoticeDetail(final List<BbsCommentListBean> list, final boolean z3) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment_.8
            @Override // java.lang.Runnable
            public void run() {
                IntroductionCommentListFragment_.super.showNoticeDetail(list, z3);
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.introduction.IntroductionCommentListFragment
    public void showTost(final String str) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment_.19
            @Override // java.lang.Runnable
            public void run() {
                IntroductionCommentListFragment_.super.showTost(str);
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.introduction.IntroductionCommentListFragment
    public void updateCommentInput() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment_.18
            @Override // java.lang.Runnable
            public void run() {
                IntroductionCommentListFragment_.super.updateCommentInput();
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.introduction.IntroductionCommentListFragment
    public void updatePraise(final boolean z3, final BbsCommentListBean bbsCommentListBean) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment_.20
            @Override // java.lang.Runnable
            public void run() {
                IntroductionCommentListFragment_.super.updatePraise(z3, bbsCommentListBean);
            }
        }, 0L);
    }
}
