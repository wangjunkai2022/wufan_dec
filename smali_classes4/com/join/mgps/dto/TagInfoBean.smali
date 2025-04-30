.class public Lcom/join/mgps/dto/TagInfoBean;
.super Ljava/lang/Object;
.source "TagInfoBean.java"


# instance fields
.field private tag_id:I

.field private tag_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTag_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/TagInfoBean;->tag_id:I

    return v0
.end method

.method public getTag_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TagInfoBean;->tag_name:Ljava/lang/String;

    return-object v0
.end method

.method public setTag_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/TagInfoBean;->tag_id:I

    return-void
.end method

.method public setTag_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TagInfoBean;->tag_name:Ljava/lang/String;

    return-void
.end method
