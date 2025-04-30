.class public Lcom/join/mgps/dto/GivePraiceBean$DataBean$MessageListBean$PostsBean;
.super Ljava/lang/Object;
.source "GivePraiceBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/GivePraiceBean$DataBean$MessageListBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PostsBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/GivePraiceBean$DataBean$MessageListBean$PostsBean$RsListBean;
    }
.end annotation


# instance fields
.field private message:Ljava/lang/String;

.field private pid:I

.field private rs_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GivePraiceBean$DataBean$MessageListBean$PostsBean$RsListBean;",
            ">;"
        }
    .end annotation
.end field

.field private subject:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GivePraiceBean$DataBean$MessageListBean$PostsBean;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GivePraiceBean$DataBean$MessageListBean$PostsBean;->pid:I

    return v0
.end method

.method public getRs_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GivePraiceBean$DataBean$MessageListBean$PostsBean$RsListBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GivePraiceBean$DataBean$MessageListBean$PostsBean;->rs_list:Ljava/util/List;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GivePraiceBean$DataBean$MessageListBean$PostsBean;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GivePraiceBean$DataBean$MessageListBean$PostsBean;->message:Ljava/lang/String;

    return-void
.end method

.method public setPid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GivePraiceBean$DataBean$MessageListBean$PostsBean;->pid:I

    return-void
.end method

.method public setRs_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GivePraiceBean$DataBean$MessageListBean$PostsBean$RsListBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GivePraiceBean$DataBean$MessageListBean$PostsBean;->rs_list:Ljava/util/List;

    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GivePraiceBean$DataBean$MessageListBean$PostsBean;->subject:Ljava/lang/String;

    return-void
.end method
