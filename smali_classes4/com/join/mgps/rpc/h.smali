.class public interface abstract Lcom/join/mgps/rpc/h;
.super Ljava/lang/Object;
.source "RpcForumClient.java"


# virtual methods
.method public abstract A(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumCommentReplyDeleteData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/group/comment/reply_delete"
    .end annotation
.end method

.method public abstract B(ILjava/lang/String;IILjava/lang/String;)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "page"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "limit"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "device_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumProfileFavoritesPostsData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/forum/profile/favorites_posts?uid={uid}&token={token}&page={page}&limit={limit}&device_id={device_id}"
    .end annotation
.end method

.method public abstract C(III)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "tid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/DiscoverListData<",
            "Lcom/join/mgps/dto/DiscoverListItemBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/discover/headlines/index"
    .end annotation
.end method

.method public abstract D(Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dto/ResultResMainBean;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "tag_name"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "type"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/join/mgps/dto/ResultResMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/LabelBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/group/posts/forum_tags?uid={uid}&tag_name={tag_name}&type={type}"
    .end annotation
.end method

.method public abstract E(Ljava/lang/String;Ljava/lang/String;II)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "page"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "limit"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$MyForumMain;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/group/forum/My_forum/myForumMain?uid={uid}&token={token}&page={page}&limit={limit}"
    .end annotation
.end method

.method public abstract F(ILjava/lang/String;II)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "token"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "limit"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "II)",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumProfileMessageData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/forum/profile/reply_posts_message_list"
    .end annotation
.end method

.method public abstract G(Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "device_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumForumAllData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/forum/forum/all_list?device_id={device_id}"
    .end annotation
.end method

.method public abstract H(Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dto/ResultResMainBean;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "post_type"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/join/mgps/dto/ResultResMainBean<",
            "Lcom/join/mgps/dto/Response;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/group/posts/submitv34/initPostExtra?uid={uid}&token={token}&post_type={post_type}"
    .end annotation
.end method

.method public abstract I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ResultResMainBean;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "game_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "fid"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/ResultResMainBean<",
            "Lcom/join/mgps/dto/GameCommitListBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/group/forum/game_comment?game_id={game_id}&fid={fid}&uid={uid}&token={token}"
    .end annotation
.end method

.method public abstract J(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumCommentReplyReplyData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/group/comment/reply"
    .end annotation
.end method

.method public abstract K(ILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "device_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumProfileUnreadMessageCountData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/forum/profile/get_unread_message_count?uid={uid}&token={token}&device_id={device_id}"
    .end annotation
.end method

.method public abstract L(Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "pids"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/MulPostData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/forum/posts/multi_detail?pids={pids}"
    .end annotation
.end method

.method public abstract M(IIIIILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "fid"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "type"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "page"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "orderBy"
        .end annotation
    .end param
    .param p5    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "limit"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/group/forum/forum/getPostByType?fid={fid}&type={type}&page={page}&orderBy={orderBy}&limit={limit}&uid={uid}&token={token}"
    .end annotation
.end method

.method public abstract N(IILjava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "page"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "limit"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "keyword"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "device_id"
        .end annotation
    .end param
    .param p5    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "fid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumSearchQueryData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/forum/search/search_query/group_search?page={page}&limit={limit}&keyword={keyword}&device_id={device_id}&fid={fid}"
    .end annotation
.end method

.method public abstract O(IILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "gid"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/group/forum/welcomev35/getHomepageRecommendLabel?gid={gid}&page={page}&uid={uid}&token={token}"
    .end annotation
.end method

.method public abstract P(Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$HomepageRecommendGroup;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/group/forum/welcome/getHomepageRecommendGroup?uid={uid}&token={token}"
    .end annotation
.end method

.method public abstract Q(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/NoticeFragmentBean;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "token"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "limit"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "appver"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "package_type"
        .end annotation
    .end param
    .annotation runtime Lretrofit2/http/GET;
        value = "/notification/notice/index"
    .end annotation
.end method

.method public abstract R(Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Url;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "name"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/HavenForumDatabean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/posts/tags"
    .end annotation
.end method

.method public abstract S(IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "fid"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "page"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "limit"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "tab_type"
        .end annotation
    .end param
    .param p5    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "from"
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "position"
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "device_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumForumPlateData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/forum/forum/plate_detail?fid={fid}&page={page}&limit={limit}&tab_type={tab_type}&uid={uid}&token={token}&from={from}&position={position}&device_id={device_id}"
    .end annotation
.end method

.method public abstract T(ILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "device_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumForumWelcomeData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/forum/forum/welcome?uid={uid}&token={token}&device_id={device_id}"
    .end annotation
.end method

.method public abstract U(ILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "device_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumForumAllData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/forum/forum/all_list?uid={uid}&token={token}&device_id={device_id}"
    .end annotation
.end method

.method public abstract V(IIILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "page"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "limit"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "device_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumForumWelcomePostsData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/forum/forum/welcome_posts?page={page}&limit={limit}&uid={uid}&token={token}&device_id={device_id}"
    .end annotation
.end method

.method public abstract W(Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "page"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/discover/forum_post/index?uid={uid}&token={token}&page={page}"
    .end annotation
.end method

.method public abstract X(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ResultResMainBean;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "tag_id"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "page"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "limit"
        .end annotation
    .end param
    .param p5    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "type"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "order"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "fid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/ResultResMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/group/forum/tag/tagIndexPost?uid={uid}&tag_id={tag_id}&page={page}&limit={limit}&type={type}&order={order}&token={token}&fid={fid}"
    .end annotation
.end method

.method public abstract Y(IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "pid"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "limit"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "see_lz"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "comment_order"
        .end annotation
    .end param
    .param p5    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "device_id"
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "from"
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "position"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumPostsData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/group/posts/detail?pid={pid}&limit={limit}&see_lz={see_lz}&comment_order={comment_order}&uid={uid}&token={token}&device_id={device_id}&from={from}&position={position}"
    .end annotation
.end method

.method public abstract Z(IILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "fid"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "page"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$GroupFans;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/group/forum/forum/getGroupFans?fid={fid}&page={page}&uid={uid}&token={token}"
    .end annotation
.end method

.method public abstract a(ILjava/lang/String;IILjava/lang/String;)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "page"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "limit"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "device_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumData$ForumProfileCommentData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/forum/profile/comment?uid={uid}&token={token}&page={page}&limit={limit}&device_id={device_id}"
    .end annotation
.end method

.method public abstract a0(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "pid"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "post_type"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "tagid_list"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/group/posts/detail/removePostTag?pid={pid}&post_type={post_type}&tagid_list={tagid_list}&uid={uid}&token={token}"
    .end annotation
.end method

.method public abstract b(III)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "tid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/DiscoverListData<",
            "Lcom/join/mgps/dto/DiscoverListWeiboItemBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/discover/headlines/index"
    .end annotation
.end method

.method public abstract b0(Ljava/lang/String;Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Url;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/MessageCommentReplyResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
    .end annotation
.end method

.method public abstract c(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumPostsReportData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/forum/posts/report"
    .end annotation
.end method

.method public abstract c0(ILjava/lang/String;ILjava/lang/String;)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "comment_pid"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "device_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumProfileMessageReplyData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/forum/profile/message_reply?uid={uid}&token={token}&comment_pid={comment_pid}&device_id={device_id}"
    .end annotation
.end method

.method public abstract d(Ljava/lang/String;)Lcom/join/mgps/dto/ResultResMainBean;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "tag_name"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/ResultResMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/LabelBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/group/posts/forum_tags/search?tag_name={tag_name}"
    .end annotation
.end method

.method public abstract d0(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumCommentDeleteData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/group/comment/delete"
    .end annotation
.end method

.method public abstract e(Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "device_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumSearchIndexData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/forum/search/search_index?device_id={device_id}"
    .end annotation
.end method

.method public abstract e0(ILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "fid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/group/forum/forum/joinGroup?fid={fid}&uid={uid}&token={token}"
    .end annotation
.end method

.method public abstract f(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/share"
    .end annotation
.end method

.method public abstract f0(IIIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "pid"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "page"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "limit"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "see_lz"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "comment_order"
        .end annotation
    .end param
    .param p6    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "device_id"
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "from"
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "position"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumPostsData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/group/posts/detail_comments?pid={pid}&page={page}&limit={limit}&see_lz={see_lz}&comment_order={comment_order}&uid={uid}&token={token}&device_id={device_id}&from={from}&position={position}"
    .end annotation
.end method

.method public abstract g(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "pid"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "post_type"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "tagid_list"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/group/posts/detail/addPostTag?pid={pid}&post_type={post_type}&tagid_list={tagid_list}&uid={uid}&token={token}"
    .end annotation
.end method

.method public abstract g0(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/HavenWishResultBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/group/posts/wish"
    .end annotation
.end method

.method public abstract h(IILjava/lang/String;IILjava/lang/String;)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "tid"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "page"
        .end annotation
    .end param
    .param p5    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "limit"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "device_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumForumTopicData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/forum/forum/topic_detail?tid={tid}&uid={uid}&token={token}&page={page}&limit={limit}&device_id={device_id}"
    .end annotation
.end method

.method public abstract h0(ILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "pid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/group/posts/detail/setFirstPost?pid={pid}&uid={uid}&token={token}"
    .end annotation
.end method

.method public abstract i(ILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "fid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/group/forum/forum/exitGroup?fid={fid}&uid={uid}&token={token}"
    .end annotation
.end method

.method public abstract i0(Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "device_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumForumWelcomeData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/forum/forum/welcome?device_id={device_id}"
    .end annotation
.end method

.method public abstract j(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumPostsHelpSolveData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/forum/posts/help_solvev34"
    .end annotation
.end method

.method public abstract j0(I)Lcom/join/mgps/dto/ResultResMainBean;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "post_type"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/join/mgps/dto/ResultResMainBean<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/group/posts/submitv34/postTipsText?post_type={post_type}"
    .end annotation
.end method

.method public abstract k(ILjava/lang/String;IILjava/lang/String;)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "page"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "limit"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "device_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumProfilePostsData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/forum/profile/posts?uid={uid}&token={token}&page={page}&limit={limit}&device_id={device_id}"
    .end annotation
.end method

.method public abstract k0(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumPostsFavoritesData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/forum/posts/favorites"
    .end annotation
.end method

.method public abstract l(IILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "page"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "limit"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "keyword"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "device_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumSearchQueryData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/forum/search/search_query?page={page}&limit={limit}&keyword={keyword}&device_id={device_id}"
    .end annotation
.end method

.method public abstract l0(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumCommentReplyData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/group/comment/reply"
    .end annotation
.end method

.method public abstract m(Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/GivePriaceBean;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Url;
        .end annotation
    .end param
    .param p2    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit2/http/POST;
    .end annotation
.end method

.method public abstract m0(ILjava/lang/String;II)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "token"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "limit"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "II)",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumProfileMessageData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/forum/profile/reply_posts_message_list/praise"
    .end annotation
.end method

.method public abstract n(I)Lcom/join/mgps/dto/ResultResMainBean;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "fid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/join/mgps/dto/ResultResMainBean<",
            "Lcom/join/mgps/dto/GameMainCommunityBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/group/forum/game_recommend?fid={fid}"
    .end annotation
.end method

.method public abstract n0(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/join/mgps/dto/ResultResMainBean;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "tag_id"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "type"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/ResultResMainBean<",
            "Lcom/join/mgps/dto/EmptyMessage;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/group/forum/tag/userFocusTag?uid={uid}&tag_id={tag_id}&type={type}&tag_name={tag_name}"
    .end annotation
.end method

.method public abstract o(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumPostsPraiseData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/forum/posts/praise"
    .end annotation
.end method

.method public abstract o0(Ljava/lang/String;I)Lcom/join/mgps/dto/ResultResMainBean;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "page"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/join/mgps/dto/ResultResMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/group/posts/gamefavoritelist?uid={uid}&page={page}"
    .end annotation
.end method

.method public abstract p(Ljava/lang/String;IILjava/lang/String;)Lcom/join/mgps/dto/ResultResMainBean;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "tag_id"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "fid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/ResultResMainBean<",
            "Lcom/join/mgps/dto/MainLabelBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/group/forum/tag/tagIndexBase?uid={uid}&tag_id={tag_id}&fid={fid}"
    .end annotation
.end method

.method public abstract p0(ILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "device_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumForumGroupsData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/forum/forum/forum_group_list?uid={uid}&token={token}&device_id={device_id}"
    .end annotation
.end method

.method public abstract q(IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "fid"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "page"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "limit"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "tab_type"
        .end annotation
    .end param
    .param p5    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "device_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumForumPlateData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/forum/forum/plate_detail?fid={fid}&page={page}&limit={limit}&tab_type={tab_type}&uid={uid}&token={token}&device_id={device_id}"
    .end annotation
.end method

.method public abstract q0(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumPostsDeleteData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/forum/posts/delete"
    .end annotation
.end method

.method public abstract r(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumPostsFavoritesData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/favorite"
    .end annotation
.end method

.method public abstract r0(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumPostsBestData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/group/posts/best"
    .end annotation
.end method

.method public abstract s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ResultResMainBean;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "tag_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/ResultResMainBean<",
            "Lcom/join/mgps/dto/GroupListBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/group/posts/forum_group?uid={uid}&token={token}&tag_id={tag_id}&tag_name={tag_name}"
    .end annotation
.end method

.method public abstract s0(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "pid"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "page"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "limit"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "see_lz"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "comment_order"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "device_id"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "from"
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "position"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumPostsData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/group/posts/detail_comments?pid={pid}&page={page}&limit={limit}&see_lz={see_lz}&comment_order={comment_order}&device_id={device_id}&from={from}&position={position}"
    .end annotation
.end method

.method public abstract t(ILjava/lang/String;IILjava/lang/String;)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "page"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "limit"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "device_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumProfileMessageData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/forum/profile/message_list?uid={uid}&token={token}&page={page}&limit={limit}&device_id={device_id}"
    .end annotation
.end method

.method public abstract t0(IILjava/lang/String;)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "page"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "limit"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "device_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumForumWelcomePostsData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/forum/forum/welcome_posts?page={page}&limit={limit}&device_id={device_id}"
    .end annotation
.end method

.method public abstract u(Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "post_type"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendLabelTag;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/group/posts/detail/showAddTagList?uid={uid}&token={token}&post_type={post_type}"
    .end annotation
.end method

.method public abstract u0(ILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "fid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumGroupIndex;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/group/forum/forumv34/getForumGroupIndex?fid={fid}&uid={uid}&token={token}"
    .end annotation
.end method

.method public abstract v(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "pid"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "limit"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "see_lz"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "comment_order"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "device_id"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "from"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "position"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumPostsData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/group/posts/detail?pid={pid}&limit={limit}&see_lz={see_lz}&comment_order={comment_order}&device_id={device_id}&from={from}&position={position}"
    .end annotation
.end method

.method public abstract v0(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/group/posts/post_gag"
    .end annotation
.end method

.method public abstract w(ILjava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "pid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "post_type"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendLabelTag;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/group/posts/detail/showRemoveTagList?pid={pid}&uid={uid}&token={token}&post_type={post_type}"
    .end annotation
.end method

.method public abstract w0(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumForumFollowData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/forum/forum/follow"
    .end annotation
.end method

.method public abstract x(ILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "device_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumForumFollowListData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/forum/forum/follow_list?uid={uid}&token={token}&device_id={device_id}"
    .end annotation
.end method

.method public abstract x0(Ljava/util/Map;)Lcom/join/mgps/dto/ResultResMainBean;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/join/mgps/dto/ResultResMainBean<",
            "Lcom/join/mgps/dto/Response;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type:multipart/form-data"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/group/posts/submitv34"
    .end annotation
.end method

.method public abstract y(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "page"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "limit"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "device_id"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "version"
        .end annotation
    .end param
    .param p7    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "type"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumUserFavoritesDatas;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/user/favoritev35/get_favorites_list?uid={uid}&token={token}&page={page}&limit={limit}&device_id={device_id}&version={version}&type={type}"
    .end annotation
.end method

.method public abstract y0(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumPostsSubmitData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type:multipart/form-data"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/group/posts/submitv34"
    .end annotation
.end method

.method public abstract z(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/group/forum/welcome/saveHomepageRecommendLabel"
    .end annotation
.end method

.method public abstract z0(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type:multipart/form-data",
            "Charset:UTF-8"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/group/posts/comment"
    .end annotation
.end method
