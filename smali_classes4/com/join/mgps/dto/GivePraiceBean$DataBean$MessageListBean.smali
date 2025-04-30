.class public Lcom/join/mgps/dto/GivePraiceBean$DataBean$MessageListBean;
.super Ljava/lang/Object;
.source "GivePraiceBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/GivePraiceBean$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageListBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/GivePraiceBean$DataBean$MessageListBean$PostsBean;
    }
.end annotation


# instance fields
.field private add_time:I

.field private comment_id:I

.field private from_avatar_src:Ljava/lang/String;

.field private from_nickname:Ljava/lang/String;

.field private from_type:Ljava/lang/String;

.field private from_uid:I

.field private message:Ljava/lang/String;

.field private pid:I

.field private posts:Lcom/join/mgps/dto/GivePraiceBean$DataBean$MessageListBean$PostsBean;

.field private rid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdd_time()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GivePraiceBean$DataBean$MessageListBean;->add_time:I

    return v0
.end method

.method public getComment_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GivePraiceBean$DataBean$MessageListBean;->comment_id:I

    return v0
.end method

.method public getFrom_avatar_src()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GivePraiceBean$DataBean$MessageListBean;->from_avatar_src:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom_nickname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GivePraiceBean$DataBean$MessageListBean;->from_nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GivePraiceBean$DataBean$MessageListBean;->from_type:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom_uid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GivePraiceBean$DataBean$MessageListBean;->from_uid:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GivePraiceBean$DataBean$MessageListBean;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GivePraiceBean$DataBean$MessageListBean;->pid:I

    return v0
.end method

.method public getPosts()Lcom/join/mgps/dto/GivePraiceBean$DataBean$MessageListBean$PostsBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GivePraiceBean$DataBean$MessageListBean;->posts:Lcom/join/mgps/dto/GivePraiceBean$DataBean$MessageListBean$PostsBean;

    return-object v0
.end method

.method public getRid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GivePraiceBean$DataBean$MessageListBean;->rid:I

    return v0
.end method

.method public setAdd_time(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GivePraiceBean$DataBean$MessageListBean;->add_time:I

    return-void
.end method

.method public setComment_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GivePraiceBean$DataBean$MessageListBean;->comment_id:I

    return-void
.end method

.method public setFrom_avatar_src(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GivePraiceBean$DataBean$MessageListBean;->from_avatar_src:Ljava/lang/String;

    return-void
.end method

.method public setFrom_nickname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GivePraiceBean$DataBean$MessageListBean;->from_nickname:Ljava/lang/String;

    return-void
.end method

.method public setFrom_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GivePraiceBean$DataBean$MessageListBean;->from_type:Ljava/lang/String;

    return-void
.end method

.method public setFrom_uid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GivePraiceBean$DataBean$MessageListBean;->from_uid:I

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GivePraiceBean$DataBean$MessageListBean;->message:Ljava/lang/String;

    return-void
.end method

.method public setPid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GivePraiceBean$DataBean$MessageListBean;->pid:I

    return-void
.end method

.method public setPosts(Lcom/join/mgps/dto/GivePraiceBean$DataBean$MessageListBean$PostsBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GivePraiceBean$DataBean$MessageListBean;->posts:Lcom/join/mgps/dto/GivePraiceBean$DataBean$MessageListBean$PostsBean;

    return-void
.end method

.method public setRid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GivePraiceBean$DataBean$MessageListBean;->rid:I

    return-void
.end method
