.class public Lcom/ss/android/downloadlib/addownload/a/d$a;
.super Ljava/lang/Object;
.source "SelectOperationDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/addownload/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Lcom/ss/android/downloadlib/addownload/a/c;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/a/d$a;->a:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/downloadlib/addownload/a/c;)Lcom/ss/android/downloadlib/addownload/a/d$a;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/a/d$a;->f:Lcom/ss/android/downloadlib/addownload/a/c;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/ss/android/downloadlib/addownload/a/d$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/a/d$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/ss/android/downloadlib/addownload/a/d$a;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/ss/android/downloadlib/addownload/a/d$a;->e:Z

    return-object p0
.end method

.method public a()Lcom/ss/android/downloadlib/addownload/a/d;
    .locals 8

    .line 4
    new-instance v7, Lcom/ss/android/downloadlib/addownload/a/d;

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/a/d$a;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/a/d$a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/a/d$a;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/ss/android/downloadlib/addownload/a/d$a;->d:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/ss/android/downloadlib/addownload/a/d$a;->e:Z

    iget-object v6, p0, Lcom/ss/android/downloadlib/addownload/a/d$a;->f:Lcom/ss/android/downloadlib/addownload/a/c;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/ss/android/downloadlib/addownload/a/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/ss/android/downloadlib/addownload/a/c;)V

    return-object v7
.end method

.method public b(Ljava/lang/String;)Lcom/ss/android/downloadlib/addownload/a/d$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/a/d$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/ss/android/downloadlib/addownload/a/d$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/a/d$a;->d:Ljava/lang/String;

    return-object p0
.end method
