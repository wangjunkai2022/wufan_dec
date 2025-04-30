.class public Lcom/join/mgps/dto/GivePraiceBean$DataBean$MessageListBean$PostsBean$RsListBean;
.super Ljava/lang/Object;
.source "GivePraiceBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/GivePraiceBean$DataBean$MessageListBean$PostsBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RsListBean"
.end annotation


# instance fields
.field private raw:Ljava/lang/String;

.field private thumb:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRaw()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GivePraiceBean$DataBean$MessageListBean$PostsBean$RsListBean;->raw:Ljava/lang/String;

    return-object v0
.end method

.method public getThumb()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GivePraiceBean$DataBean$MessageListBean$PostsBean$RsListBean;->thumb:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GivePraiceBean$DataBean$MessageListBean$PostsBean$RsListBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setRaw(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GivePraiceBean$DataBean$MessageListBean$PostsBean$RsListBean;->raw:Ljava/lang/String;

    return-void
.end method

.method public setThumb(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GivePraiceBean$DataBean$MessageListBean$PostsBean$RsListBean;->thumb:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GivePraiceBean$DataBean$MessageListBean$PostsBean$RsListBean;->type:Ljava/lang/String;

    return-void
.end method
