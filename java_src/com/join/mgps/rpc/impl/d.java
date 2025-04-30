package com.join.mgps.rpc.impl;

import com.join.mgps.dto.CommentAllListBean;
import com.join.mgps.dto.CommentCreateArgs;
import com.join.mgps.dto.CommentCreateBean;
import com.join.mgps.dto.CommentDetailBean;
import com.join.mgps.dto.CommentListForSelfBean;
import com.join.mgps.dto.CommentModifyArgs;
import com.join.mgps.dto.CommentPraiseBean;
import com.join.mgps.dto.CommentPraiseRequestBean;
import com.join.mgps.dto.CommentRequest;
import com.join.mgps.dto.CommentResponse;
import com.join.mgps.dto.CommentSelfRequestBean;
import com.join.mgps.dto.CommentTokenBean;
import com.join.mgps.dto.DeleteCommentArgs;
import com.join.mgps.dto.GamedetialCommentRequest;
import com.join.mgps.dto.RequestCommentAllListArgs;
import com.join.mgps.dto.RequestCommentDetailArgs;
import com.join.mgps.dto.RequestCommentpraiseArgs;
import com.join.mgps.rpc.retrofit2.RetrofitApi;
import java.io.IOException;
/* compiled from: RpcCommentClientImpl.java */
/* loaded from: classes4.dex */
public class d implements com.join.mgps.rpc.e {

    /* renamed from: b  reason: collision with root package name */
    private static d f51578b;

    /* renamed from: a  reason: collision with root package name */
    private final q1.d f51579a;

    public d(q1.d dVar) {
        this.f51579a = dVar;
    }

    public static d m() {
        if (f51578b == null) {
            f51578b = new d((q1.d) RetrofitApi.getRetrofit2(com.join.mgps.rpc.g.f51557v).create(q1.d.class));
        }
        return f51578b;
    }

    @Override // com.join.mgps.rpc.e
    public CommentResponse<CommentCreateBean> a(CommentModifyArgs commentModifyArgs) {
        try {
            q1.d dVar = this.f51579a;
            if (dVar != null) {
                return dVar.a(commentModifyArgs).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public CommentResponse<CommentAllListBean> b(RequestCommentAllListArgs requestCommentAllListArgs) {
        try {
            q1.d dVar = this.f51579a;
            if (dVar != null) {
                return dVar.b(requestCommentAllListArgs).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public CommentResponse<CommentTokenBean> c(CommentRequest commentRequest) {
        try {
            q1.d dVar = this.f51579a;
            if (dVar != null) {
                return dVar.c(commentRequest).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public CommentResponse<CommentCreateBean> d(CommentCreateArgs commentCreateArgs) {
        try {
            q1.d dVar = this.f51579a;
            if (dVar != null) {
                return dVar.d(commentCreateArgs).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public CommentResponse<CommentDetailBean> e(RequestCommentDetailArgs requestCommentDetailArgs) {
        try {
            q1.d dVar = this.f51579a;
            if (dVar != null) {
                return dVar.e(requestCommentDetailArgs).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public CommentResponse<CommentPraiseBean> f(CommentPraiseRequestBean commentPraiseRequestBean) {
        try {
            q1.d dVar = this.f51579a;
            if (dVar != null) {
                return dVar.f(commentPraiseRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public CommentResponse<CommentAllListBean> g(GamedetialCommentRequest gamedetialCommentRequest) {
        try {
            q1.d dVar = this.f51579a;
            if (dVar != null) {
                return dVar.g(gamedetialCommentRequest).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public CommentResponse<CommentPraiseBean> h(RequestCommentpraiseArgs requestCommentpraiseArgs) {
        try {
            q1.d dVar = this.f51579a;
            if (dVar != null) {
                return dVar.h(requestCommentpraiseArgs).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public CommentResponse<CommentPraiseBean> i(CommentPraiseRequestBean commentPraiseRequestBean) {
        try {
            q1.d dVar = this.f51579a;
            if (dVar != null) {
                return dVar.i(commentPraiseRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public CommentResponse<CommentListForSelfBean> j(CommentSelfRequestBean commentSelfRequestBean) {
        try {
            q1.d dVar = this.f51579a;
            if (dVar != null) {
                return dVar.j(commentSelfRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public CommentResponse<CommentPraiseBean> k(DeleteCommentArgs deleteCommentArgs) {
        try {
            q1.d dVar = this.f51579a;
            if (dVar != null) {
                return dVar.k(deleteCommentArgs).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public CommentResponse<CommentPraiseBean> l(RequestCommentpraiseArgs requestCommentpraiseArgs) {
        try {
            q1.d dVar = this.f51579a;
            if (dVar != null) {
                return dVar.l(requestCommentpraiseArgs).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }
}
