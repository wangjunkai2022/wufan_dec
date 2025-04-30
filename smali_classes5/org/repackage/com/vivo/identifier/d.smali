.class public Lorg/repackage/com/vivo/identifier/d;
.super Landroid/database/ContentObserver;
.source "IdentifierIdObserver.java"


# static fields
.field private static final d:Ljava/lang/String; = "VMS_IDLG_SDK_Observer"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Lorg/repackage/com/vivo/identifier/c;


# direct methods
.method public constructor <init>(Lorg/repackage/com/vivo/identifier/c;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2
    iput-object p1, p0, Lorg/repackage/com/vivo/identifier/d;->c:Lorg/repackage/com/vivo/identifier/c;

    .line 3
    iput p2, p0, Lorg/repackage/com/vivo/identifier/d;->b:I

    .line 4
    iput-object p3, p0, Lorg/repackage/com/vivo/identifier/d;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Lorg/repackage/com/vivo/identifier/d;->c:Lorg/repackage/com/vivo/identifier/c;

    if-eqz p1, :cond_0

    .line 2
    iget v0, p0, Lorg/repackage/com/vivo/identifier/d;->b:I

    iget-object v1, p0, Lorg/repackage/com/vivo/identifier/d;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/repackage/com/vivo/identifier/c;->d(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
