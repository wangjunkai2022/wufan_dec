.class public Lcom/join/mgps/dto/ForumBean$ForumTabBean;
.super Ljava/lang/Object;
.source "ForumBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/ForumBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForumTabBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;
    }
.end annotation


# instance fields
.field private tab_name:Ljava/lang/String;

.field private tab_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTab_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumTabBean;->tab_name:Ljava/lang/String;

    return-object v0
.end method

.method public getTab_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumTabBean;->tab_type:Ljava/lang/String;

    return-object v0
.end method

.method public setTab_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBean$ForumTabBean;->tab_name:Ljava/lang/String;

    return-void
.end method

.method public setTab_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBean$ForumTabBean;->tab_type:Ljava/lang/String;

    return-void
.end method
