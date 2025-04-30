.class Lcom/join/android/app/component/video/EmptyControlVideoView$b;
.super Ljava/lang/Object;
.source "EmptyControlVideoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/video/EmptyControlVideoView;->showWifiDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/component/video/EmptyControlVideoView;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/video/EmptyControlVideoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/EmptyControlVideoView$b;->a:Lcom/join/android/app/component/video/EmptyControlVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/android/app/component/video/EmptyControlVideoView$b;->a:Lcom/join/android/app/component/video/EmptyControlVideoView;

    iget-object p1, p1, Lcom/join/android/app/component/video/EmptyControlVideoView;->c:Lcom/join/mgps/customview/t;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
