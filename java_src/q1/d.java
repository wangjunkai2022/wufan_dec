package q1;

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
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.POST;
/* compiled from: IRpcCommentClient.java */
/* loaded from: classes4.dex */
public interface d {
    @POST("/modifyComment/index")
    Call<CommentResponse<CommentCreateBean>> a(@Body CommentModifyArgs commentModifyArgs);

    @POST("/commentlist/index")
    Call<CommentResponse<CommentAllListBean>> b(@Body RequestCommentAllListArgs requestCommentAllListArgs);

    @POST("/token/index")
    Call<CommentResponse<CommentTokenBean>> c(@Body CommentRequest commentRequest);

    @POST("/addcomment/index")
    Call<CommentResponse<CommentCreateBean>> d(@Body CommentCreateArgs commentCreateArgs);

    @POST("/commentDetailList/index")
    Call<CommentResponse<CommentDetailBean>> e(@Body RequestCommentDetailArgs requestCommentDetailArgs);

    @POST("/adddespise/index")
    Call<CommentResponse<CommentPraiseBean>> f(@Body CommentPraiseRequestBean commentPraiseRequestBean);

    @POST(com.join.mgps.rpc.g.B0)
    Call<CommentResponse<CommentAllListBean>> g(@Body GamedetialCommentRequest gamedetialCommentRequest);

    @POST("/addpraise/index")
    Call<CommentResponse<CommentPraiseBean>> h(@Body RequestCommentpraiseArgs requestCommentpraiseArgs);

    @POST("/addpraise/index")
    Call<CommentResponse<CommentPraiseBean>> i(@Body CommentPraiseRequestBean commentPraiseRequestBean);

    @POST("/commentListForSelfv2/index")
    Call<CommentResponse<CommentListForSelfBean>> j(@Body CommentSelfRequestBean commentSelfRequestBean);

    @POST("/delComment/index")
    Call<CommentResponse<CommentPraiseBean>> k(@Body DeleteCommentArgs deleteCommentArgs);

    @POST("/adddespise/index")
    Call<CommentResponse<CommentPraiseBean>> l(@Body RequestCommentpraiseArgs requestCommentpraiseArgs);
}
