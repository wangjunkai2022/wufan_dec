package com.join.mgps.rpc;

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
import retrofit2.http.Body;
import retrofit2.http.POST;
/* compiled from: RpcCommentClient.java */
/* loaded from: classes4.dex */
public interface e {
    @POST("/modifyComment/index")
    CommentResponse<CommentCreateBean> a(@Body CommentModifyArgs commentModifyArgs);

    @POST("/commentlist/index")
    CommentResponse<CommentAllListBean> b(@Body RequestCommentAllListArgs requestCommentAllListArgs);

    @POST("/token/index")
    CommentResponse<CommentTokenBean> c(@Body CommentRequest commentRequest);

    @POST("/addcomment/index")
    CommentResponse<CommentCreateBean> d(@Body CommentCreateArgs commentCreateArgs);

    @POST("/commentDetailList/index")
    CommentResponse<CommentDetailBean> e(@Body RequestCommentDetailArgs requestCommentDetailArgs);

    @POST("/adddespise/index")
    CommentResponse<CommentPraiseBean> f(@Body CommentPraiseRequestBean commentPraiseRequestBean);

    @POST(g.B0)
    CommentResponse<CommentAllListBean> g(@Body GamedetialCommentRequest gamedetialCommentRequest);

    @POST("/addpraise/index")
    CommentResponse<CommentPraiseBean> h(@Body RequestCommentpraiseArgs requestCommentpraiseArgs);

    @POST("/addpraise/index")
    CommentResponse<CommentPraiseBean> i(@Body CommentPraiseRequestBean commentPraiseRequestBean);

    @POST("/commentListForSelfv2/index")
    CommentResponse<CommentListForSelfBean> j(@Body CommentSelfRequestBean commentSelfRequestBean);

    @POST("/delComment/index")
    CommentResponse<CommentPraiseBean> k(@Body DeleteCommentArgs deleteCommentArgs);

    @POST("/adddespise/index")
    CommentResponse<CommentPraiseBean> l(@Body RequestCommentpraiseArgs requestCommentpraiseArgs);
}
