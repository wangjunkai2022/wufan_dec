.class public final synthetic Lcom/join/mgps/dialog/f0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/join/mgps/dialog/DownloadHighSpeedDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/dialog/DownloadHighSpeedDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/dialog/f0;->a:Lcom/join/mgps/dialog/DownloadHighSpeedDialog;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/join/mgps/dialog/f0;->a:Lcom/join/mgps/dialog/DownloadHighSpeedDialog;

    invoke-static {v0, p1, p2}, Lcom/join/mgps/dialog/DownloadHighSpeedDialog;->D0(Lcom/join/mgps/dialog/DownloadHighSpeedDialog;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
