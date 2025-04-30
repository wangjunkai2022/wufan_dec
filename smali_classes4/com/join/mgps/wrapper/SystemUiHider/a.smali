.class public abstract Lcom/join/mgps/wrapper/SystemUiHider/a;
.super Ljava/lang/Object;
.source "SystemUiHider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/wrapper/SystemUiHider/a$b;
    }
.end annotation


# static fields
.field public static final e:I = 0x1

.field public static final f:I = 0x2

.field public static final g:I = 0x6

.field private static h:Lcom/join/mgps/wrapper/SystemUiHider/a$b;


# instance fields
.field protected a:Landroid/app/Activity;

.field protected b:Landroid/view/View;

.field protected c:I

.field protected d:Lcom/join/mgps/wrapper/SystemUiHider/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/wrapper/SystemUiHider/a$a;

    invoke-direct {v0}, Lcom/join/mgps/wrapper/SystemUiHider/a$a;-><init>()V

    sput-object v0, Lcom/join/mgps/wrapper/SystemUiHider/a;->h:Lcom/join/mgps/wrapper/SystemUiHider/a$b;

    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;Landroid/view/View;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/join/mgps/wrapper/SystemUiHider/a;->h:Lcom/join/mgps/wrapper/SystemUiHider/a$b;

    iput-object v0, p0, Lcom/join/mgps/wrapper/SystemUiHider/a;->d:Lcom/join/mgps/wrapper/SystemUiHider/a$b;

    .line 3
    iput-object p1, p0, Lcom/join/mgps/wrapper/SystemUiHider/a;->a:Landroid/app/Activity;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/wrapper/SystemUiHider/a;->b:Landroid/view/View;

    .line 5
    iput p3, p0, Lcom/join/mgps/wrapper/SystemUiHider/a;->c:I

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/view/View;I)Lcom/join/mgps/wrapper/SystemUiHider/a;
    .locals 2

    .line 1
    sget v0, Lcom/join/mgps/wrapper/a;->b:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/wrapper/SystemUiHider/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/wrapper/SystemUiHider/c;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/join/mgps/wrapper/SystemUiHider/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/wrapper/SystemUiHider/b;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    return-object v0
.end method


# virtual methods
.method public abstract b()V
.end method

.method public abstract c()Z
.end method

.method public d(Lcom/join/mgps/wrapper/SystemUiHider/a$b;)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/join/mgps/wrapper/SystemUiHider/a;->h:Lcom/join/mgps/wrapper/SystemUiHider/a$b;

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/join/mgps/wrapper/SystemUiHider/a;->d:Lcom/join/mgps/wrapper/SystemUiHider/a$b;

    return-void
.end method

.method public abstract e()V
.end method

.method public abstract f()V
.end method

.method public g()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/wrapper/SystemUiHider/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/wrapper/SystemUiHider/a;->b()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/wrapper/SystemUiHider/a;->f()V

    :goto_0
    return-void
.end method
