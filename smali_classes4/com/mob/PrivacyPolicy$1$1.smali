.class Lcom/mob/PrivacyPolicy$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/PrivacyPolicy$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/PrivacyPolicy;

.field final synthetic b:Lcom/mob/PrivacyPolicy$1;


# direct methods
.method constructor <init>(Lcom/mob/PrivacyPolicy$1;Lcom/mob/PrivacyPolicy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/PrivacyPolicy$1$1;->b:Lcom/mob/PrivacyPolicy$1;

    iput-object p2, p0, Lcom/mob/PrivacyPolicy$1$1;->a:Lcom/mob/PrivacyPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mob/PrivacyPolicy$1$1;->b:Lcom/mob/PrivacyPolicy$1;

    iget-object p1, p1, Lcom/mob/PrivacyPolicy$1;->c:Lcom/mob/PrivacyPolicy$OnPolicyListener;

    iget-object v0, p0, Lcom/mob/PrivacyPolicy$1$1;->a:Lcom/mob/PrivacyPolicy;

    invoke-interface {p1, v0}, Lcom/mob/PrivacyPolicy$OnPolicyListener;->onComplete(Lcom/mob/PrivacyPolicy;)V

    const/4 p1, 0x0

    return p1
.end method
