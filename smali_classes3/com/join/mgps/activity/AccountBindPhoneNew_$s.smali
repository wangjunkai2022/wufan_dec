.class Lcom/join/mgps/activity/AccountBindPhoneNew_$s;
.super Ljava/lang/Object;
.source "AccountBindPhoneNew_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/AccountBindPhoneNew_;->S0(Lcom/join/mgps/dto/AccountAnonymousReginRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/AccountAnonymousReginRequest;

.field final synthetic b:Lcom/join/mgps/activity/AccountBindPhoneNew_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/AccountBindPhoneNew_;Lcom/join/mgps/dto/AccountAnonymousReginRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew_$s;->b:Lcom/join/mgps/activity/AccountBindPhoneNew_;

    iput-object p2, p0, Lcom/join/mgps/activity/AccountBindPhoneNew_$s;->a:Lcom/join/mgps/dto/AccountAnonymousReginRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew_$s;->b:Lcom/join/mgps/activity/AccountBindPhoneNew_;

    iget-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew_$s;->a:Lcom/join/mgps/dto/AccountAnonymousReginRequest;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/AccountBindPhoneNew_;->a1(Lcom/join/mgps/activity/AccountBindPhoneNew_;Lcom/join/mgps/dto/AccountAnonymousReginRequest;)V

    return-void
.end method
