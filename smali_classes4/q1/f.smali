.class public interface abstract Lq1/f;
.super Ljava/lang/Object;
.source "IRpcForumClient.java"


# virtual methods
.method public abstract A(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumCommentReplyDeleteData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/group/comment/reply_delete"
    .end annotation
.end method

.method public abstract B(ILjava/lang/String;IILjava/lang/String;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumProfileFavoritesPostsData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/forum/profile/favorites_posts"
    .end annotation
.end method

.method public abstract C(III)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/DiscoverListData<",
            "Lcom/join/mgps/dto/DiscoverListItemBean;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/discover/headlines/index"
    .end annotation
.end method

.method public abstract D(Ljava/lang/String;Ljava/lang/String;I)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "tag_name"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "type"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResultResMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/LabelBean;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/group/posts/forum_tags"
    .end annotation
.end method

.method public abstract E(Ljava/lang/String;Ljava/lang/String;II)Lretrofit2/Call;
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
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$MyForumMain;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/group/forum/My_forum/myForumMain"
    .end annotation
.end method

.method public abstract F(ILjava/lang/String;II)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumProfileMessageData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/forum/profile/reply_posts_message_list"
    .end annotation
.end method

.method public abstract G(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "device_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumForumAllData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/forum/forum/all_list"
    .end annotation
.end method

.method public abstract H(Ljava/lang/String;Ljava/lang/String;I)Lretrofit2/Call;
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
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "post_type"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResultResMainBean<",
            "Lcom/join/mgps/dto/Response;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/group/posts/submitv34/initPostExtra"
    .end annotation
.end method

.method public abstract I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "game_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "fid"
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
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResultResMainBean<",
            "Lcom/join/mgps/dto/GameCommitListBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/group/forum/game_comment"
    .end annotation
.end method

.method public abstract J(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumCommentReplyReplyData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/group/comment/reply"
    .end annotation
.end method

.method public abstract K(ILjava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
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
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "device_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumProfileUnreadMessageCountData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/forum/profile/get_unread_message_count"
    .end annotation
.end method

.method public abstract L(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "pids"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/MulPostData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/forum/posts/multi_detail"
    .end annotation
.end method

.method public abstract M(IIIIILjava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "fid"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "type"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "orderBy"
        .end annotation
    .end param
    .param p5    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "limit"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/group/forum/forum/getPostByType"
    .end annotation
.end method

.method public abstract N(IILjava/lang/String;Ljava/lang/String;I)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "limit"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "keyword"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "device_id"
        .end annotation
    .end param
    .param p5    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "fid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumSearchQueryData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/forum/search/search_query/group_search"
    .end annotation
.end method

.method public abstract O(IILjava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/group/forum/welcomev35/getHomepageRecommendLabel"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Connection:close"
        }
    .end annotation
.end method

.method public abstract P(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$HomepageRecommendGroup;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/group/forum/welcome/getHomepageRecommendGroup"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Connection:close"
        }
    .end annotation
.end method

.method public abstract Q(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/NoticeFragmentBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/notification/notice/index"
    .end annotation
.end method

.method public abstract R(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/HavenForumDatabean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
    .end annotation
.end method

.method public abstract S(IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "fid"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "limit"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "tab_type"
        .end annotation
    .end param
    .param p5    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "token"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "from"
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "position"
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumForumPlateData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/forum/forum/plate_detail"
    .end annotation
.end method

.method public abstract T(ILjava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
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
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "device_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumForumWelcomeData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/forum/forum/welcome"
    .end annotation
.end method

.method public abstract U(ILjava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
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
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "device_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumForumAllData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/forum/forum/all_list"
    .end annotation
.end method

.method public abstract V(IIILjava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "limit"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "token"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "device_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumForumWelcomePostsData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/forum/forum/welcome_posts"
    .end annotation
.end method

.method public abstract W(Ljava/lang/String;Ljava/lang/String;I)Lretrofit2/Call;
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
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/discover/forum_post/index"
    .end annotation
.end method

.method public abstract X(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "tag_id"
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
    .param p5    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "type"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "order"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "token"
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResultResMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/group/forum/tag/tagIndexPost"
    .end annotation
.end method

.method public abstract Y(IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "pid"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "limit"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "see_lz"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "comment_order"
        .end annotation
    .end param
    .param p5    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "token"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "device_id"
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "from"
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumPostsData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/group/posts/detail"
    .end annotation
.end method

.method public abstract Z(IILjava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "fid"
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$GroupFans;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/group/forum/forum/getGroupFans"
    .end annotation
.end method

.method public abstract a(ILjava/lang/String;IILjava/lang/String;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumData$ForumProfileCommentData;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/forum/profile/comment"
    .end annotation
.end method

.method public abstract a0(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "pid"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "post_type"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "tagid_list"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/group/posts/detail/removePostTag"
    .end annotation
.end method

.method public abstract b(III)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/DiscoverListData<",
            "Lcom/join/mgps/dto/DiscoverListWeiboItemBean;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/discover/headlines/index"
    .end annotation
.end method

.method public abstract b0(Ljava/lang/String;Ljava/util/Map;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/MessageCommentReplyResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
    .end annotation
.end method

.method public abstract c(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumPostsReportData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/forum/posts/report"
    .end annotation
.end method

.method public abstract c0(ILjava/lang/String;ILjava/lang/String;)Lretrofit2/Call;
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
            value = "comment_pid"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumProfileMessageReplyData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/forum/profile/message_reply"
    .end annotation
.end method

.method public abstract d(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "tag_name"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResultResMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/LabelBean;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/group/posts/forum_tags/search"
    .end annotation
.end method

.method public abstract d0(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumCommentDeleteData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/group/comment/delete"
    .end annotation
.end method

.method public abstract e(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "device_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumSearchIndexData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/forum/search/search_index"
    .end annotation
.end method

.method public abstract e0(ILjava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "fid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/group/forum/forum/joinGroup"
    .end annotation
.end method

.method public abstract f(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumResult;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/share"
    .end annotation
.end method

.method public abstract f0(IIIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "pid"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "limit"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "see_lz"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "comment_order"
        .end annotation
    .end param
    .param p6    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "token"
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "device_id"
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "from"
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumPostsData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/group/posts/detail_comments"
    .end annotation
.end method

.method public abstract g(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "pid"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "post_type"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "tagid_list"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/group/posts/detail/addPostTag"
    .end annotation
.end method

.method public abstract g0(Ljava/util/Map;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/HavenWishResultBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/group/posts/wish"
    .end annotation
.end method

.method public abstract h(IILjava/lang/String;IILjava/lang/String;)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "tid"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "token"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p5    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "limit"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumForumTopicData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/forum/forum/topic_detail"
    .end annotation
.end method

.method public abstract h0(ILjava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "pid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumResult;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/group/posts/detail/setFirstPost"
    .end annotation
.end method

.method public abstract i(ILjava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "fid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/group/forum/forum/exitGroup"
    .end annotation
.end method

.method public abstract i0(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "device_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumForumWelcomeData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/forum/forum/welcome"
    .end annotation
.end method

.method public abstract j(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumPostsHelpSolveData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/forum/posts/help_solvev34"
    .end annotation
.end method

.method public abstract j0(I)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "post_type"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResultResMainBean<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/group/posts/submitv34/postTipsText"
    .end annotation
.end method

.method public abstract k(ILjava/lang/String;IILjava/lang/String;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumProfilePostsData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/forum/profile/posts"
    .end annotation
.end method

.method public abstract k0(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumPostsFavoritesData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/forum/posts/favorites"
    .end annotation
.end method

.method public abstract l(IILjava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "limit"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "keyword"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "device_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumSearchQueryData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/forum/search/search_query"
    .end annotation
.end method

.method public abstract l0(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumCommentReplyData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/group/comment/reply"
    .end annotation
.end method

.method public abstract m(Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestBean;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Url;
        .end annotation
    .end param
    .param p2    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/join/mgps/dto/CommonRequestBean;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/GivePriaceBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
    .end annotation
.end method

.method public abstract m0(ILjava/lang/String;II)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumProfileMessageData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/forum/profile/reply_posts_message_list/praise"
    .end annotation
.end method

.method public abstract n(I)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "fid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResultResMainBean<",
            "Lcom/join/mgps/dto/GameMainCommunityBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/group/forum/game_recommend"
    .end annotation
.end method

.method public abstract n0(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "tag_id"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "type"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "tag_name"
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResultResMainBean<",
            "Lcom/join/mgps/dto/EmptyMessage;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/group/forum/tag/userFocusTag"
    .end annotation
.end method

.method public abstract o(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumPostsPraiseData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/forum/posts/praise"
    .end annotation
.end method

.method public abstract o0(Ljava/lang/String;I)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResultResMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/group/posts/gamefavoritelist"
    .end annotation
.end method

.method public abstract p(Ljava/lang/String;IILjava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "tag_id"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "fid"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "tag_name"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResultResMainBean<",
            "Lcom/join/mgps/dto/MainLabelBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/group/forum/tag/tagIndexBase"
    .end annotation
.end method

.method public abstract p0(ILjava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
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
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "device_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumForumGroupsData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/forum/forum/forum_group_list"
    .end annotation
.end method

.method public abstract q(IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "fid"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "limit"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "tab_type"
        .end annotation
    .end param
    .param p5    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "token"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumForumPlateData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/forum/forum/plate_detail"
    .end annotation
.end method

.method public abstract q0(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumPostsDeleteData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/forum/posts/delete"
    .end annotation
.end method

.method public abstract r(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumPostsFavoritesData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/favorite"
    .end annotation
.end method

.method public abstract r0(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumPostsBestData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/group/posts/best"
    .end annotation
.end method

.method public abstract s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
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
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "tag_id"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "tag_name"
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResultResMainBean<",
            "Lcom/join/mgps/dto/GroupListBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/group/posts/forum_group"
    .end annotation
.end method

.method public abstract s0(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "pid"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "limit"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "see_lz"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "comment_order"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "device_id"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "from"
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumPostsData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/group/posts/detail_comments"
    .end annotation
.end method

.method public abstract t(ILjava/lang/String;IILjava/lang/String;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumProfileMessageData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/forum/profile/message_list"
    .end annotation
.end method

.method public abstract t0(IILjava/lang/String;)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "limit"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "device_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumForumWelcomePostsData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/forum/forum/welcome_posts"
    .end annotation
.end method

.method public abstract u(Ljava/lang/String;Ljava/lang/String;I)Lretrofit2/Call;
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
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "post_type"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendLabelTag;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/group/posts/detail/showAddTagList"
    .end annotation
.end method

.method public abstract u0(ILjava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "fid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumGroupIndex;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/group/forum/forumv34/getForumGroupIndex"
    .end annotation
.end method

.method public abstract v(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "pid"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "limit"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "see_lz"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "comment_order"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "device_id"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "from"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumPostsData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/group/posts/detail"
    .end annotation
.end method

.method public abstract v0(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumResult;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/group/posts/post_gag"
    .end annotation
.end method

.method public abstract w(ILjava/lang/String;Ljava/lang/String;I)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "pid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "token"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "post_type"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendLabelTag;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/group/posts/detail/showRemoveTagList"
    .end annotation
.end method

.method public abstract w0(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumForumFollowData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/forum/forum/follow"
    .end annotation
.end method

.method public abstract x(ILjava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
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
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "device_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumForumFollowListData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/forum/forum/follow_list"
    .end annotation
.end method

.method public abstract x0(Ljava/util/Map;Ljava/util/List;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/PartMap;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation runtime Lretrofit2/http/Part;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lokhttp3/RequestBody;",
            ">;",
            "Ljava/util/List<",
            "Lokhttp3/MultipartBody$Part;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumPostsSubmitData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Multipart;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/group/posts/submitv34"
    .end annotation
.end method

.method public abstract y(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;I)Lretrofit2/Call;
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
            value = "device_id"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "version"
        .end annotation
    .end param
    .param p7    # I
        .annotation runtime Lretrofit2/http/Query;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumUserFavoritesDatas;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/user/favoritev35/get_favorites_list"
    .end annotation
.end method

.method public abstract y0(Ljava/util/Map;Ljava/util/List;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/PartMap;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation runtime Lretrofit2/http/Part;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lokhttp3/RequestBody;",
            ">;",
            "Ljava/util/List<",
            "Lokhttp3/MultipartBody$Part;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResultResMainBean<",
            "Lcom/join/mgps/dto/Response;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Multipart;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/group/posts/submitv34"
    .end annotation
.end method

.method public abstract z(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/group/forum/welcome/saveHomepageRecommendLabel"
    .end annotation
.end method

.method public abstract z0(Ljava/util/Map;Ljava/util/List;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/PartMap;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation runtime Lretrofit2/http/Part;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lokhttp3/RequestBody;",
            ">;",
            "Ljava/util/List<",
            "Lokhttp3/MultipartBody$Part;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Multipart;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/group/posts/comment"
    .end annotation
.end method
