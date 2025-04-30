.class public Lcom/papa91/view/AutoSaveSlot$MyClickListener;
.super Ljava/lang/Object;
.source "AutoSaveSlot.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/view/AutoSaveSlot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyClickListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/view/AutoSaveSlot$MyClickListener$MyClickCallBack;
    }
.end annotation


# static fields
.field private static timeout:I = 0x190


# instance fields
.field private clickCount:I

.field private handler:Landroid/os/Handler;

.field private myClickCallBack:Lcom/papa91/view/AutoSaveSlot$MyClickListener$MyClickCallBack;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/papa91/view/AutoSaveSlot$MyClickListener$MyClickCallBack;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/view/AutoSaveSlot$MyClickListener;->clickCount:I

    .line 3
    iput-object p1, p0, Lcom/papa91/view/AutoSaveSlot$MyClickListener;->myClickCallBack:Lcom/papa91/view/AutoSaveSlot$MyClickListener$MyClickCallBack;

    .line 4
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/papa91/view/AutoSaveSlot$MyClickListener;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/papa91/view/AutoSaveSlot$MyClickListener;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa91/view/AutoSaveSlot$MyClickListener;->clickCount:I

    return p0
.end method

.method static synthetic access$002(Lcom/papa91/view/AutoSaveSlot$MyClickListener;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/view/AutoSaveSlot$MyClickListener;->clickCount:I

    return p1
.end method

.method static synthetic access$100(Lcom/papa91/view/AutoSaveSlot$MyClickListener;)Lcom/papa91/view/AutoSaveSlot$MyClickListener$MyClickCallBack;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/view/AutoSaveSlot$MyClickListener;->myClickCallBack:Lcom/papa91/view/AutoSaveSlot$MyClickListener$MyClickCallBack;

    return-object p0
.end method

.method static synthetic access$200(Lcom/papa91/view/AutoSaveSlot$MyClickListener;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/view/AutoSaveSlot$MyClickListener;->handler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget p1, p0, Lcom/papa91/view/AutoSaveSlot$MyClickListener;->clickCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/papa91/view/AutoSaveSlot$MyClickListener;->clickCount:I

    .line 3
    iget-object p1, p0, Lcom/papa91/view/AutoSaveSlot$MyClickListener;->handler:Landroid/os/Handler;

    new-instance p2, Lcom/papa91/view/AutoSaveSlot$MyClickListener$1;

    invoke-direct {p2, p0}, Lcom/papa91/view/AutoSaveSlot$MyClickListener$1;-><init>(Lcom/papa91/view/AutoSaveSlot$MyClickListener;)V

    sget v0, Lcom/papa91/view/AutoSaveSlot$MyClickListener;->timeout:I

    int-to-long v0, v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
