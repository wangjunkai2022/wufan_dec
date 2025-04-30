.class Lcom/ss/android/downloadlib/addownload/compliance/AppPrivacyPolicyActivity$1;
.super Ljava/lang/Object;
.source "AppPrivacyPolicyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/compliance/AppPrivacyPolicyActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/downloadlib/addownload/compliance/AppPrivacyPolicyActivity;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/addownload/compliance/AppPrivacyPolicyActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/compliance/AppPrivacyPolicyActivity$1;->a:Lcom/ss/android/downloadlib/addownload/compliance/AppPrivacyPolicyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/compliance/AppPrivacyPolicyActivity$1;->a:Lcom/ss/android/downloadlib/addownload/compliance/AppPrivacyPolicyActivity;

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/compliance/AppPrivacyPolicyActivity;->a(Lcom/ss/android/downloadlib/addownload/compliance/AppPrivacyPolicyActivity;)J

    move-result-wide v0

    const-string p1, "lp_app_privacy_click_close"

    invoke-static {p1, v0, v1}, Lcom/ss/android/downloadlib/addownload/compliance/e;->a(Ljava/lang/String;J)V

    .line 2
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/compliance/AppPrivacyPolicyActivity$1;->a:Lcom/ss/android/downloadlib/addownload/compliance/AppPrivacyPolicyActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
