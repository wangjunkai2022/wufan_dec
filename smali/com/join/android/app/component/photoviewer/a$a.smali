.class Lcom/join/android/app/component/photoviewer/a$a;
.super Ljava/lang/Object;
.source "ImageDetailFragment.java"

# interfaces
.implements Lme/relex/photodraweeview/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/photoviewer/a;->S()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/component/photoviewer/a;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/photoviewer/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/photoviewer/a$a;->a:Lcom/join/android/app/component/photoviewer/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;FF)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/join/android/app/component/photoviewer/a$a;->a:Lcom/join/android/app/component/photoviewer/a;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
