.class public final synthetic Lcom/papa91/arc/dialog/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# static fields
.field public static final synthetic a:Lcom/papa91/arc/dialog/g;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/papa91/arc/dialog/g;

    invoke-direct {v0}, Lcom/papa91/arc/dialog/g;-><init>()V

    sput-object v0, Lcom/papa91/arc/dialog/g;->a:Lcom/papa91/arc/dialog/g;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/papa91/arc/dialog/RealNameDialog;->a(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
