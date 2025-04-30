.class public final Lorg/androidannotations/api/builder/f;
.super Ljava/lang/Object;
.source "PostActivityStarter.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/androidannotations/api/builder/f;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/builder/f;->a:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method
