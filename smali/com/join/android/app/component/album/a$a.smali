.class Lcom/join/android/app/component/album/a$a;
.super Ljava/lang/Object;
.source "AlbumPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/album/a;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/component/album/a;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/album/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/album/a$a;->a:Lcom/join/android/app/component/album/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/android/app/component/album/a$a;->a:Lcom/join/android/app/component/album/a;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
