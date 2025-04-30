.class public Lcom/ss/android/downloadlib/addownload/b/d$a;
.super Ljava/lang/Object;
.source "InstalledAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/addownload/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:J


# direct methods
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/b/d$a;->a:Ljava/lang/String;

    .line 4
    iput p2, p0, Lcom/ss/android/downloadlib/addownload/b/d$a;->b:I

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    .line 5
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    iput-object p2, p0, Lcom/ss/android/downloadlib/addownload/b/d$a;->c:Ljava/lang/String;

    if-eqz p4, :cond_1

    .line 6
    invoke-virtual {p4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    :cond_1
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/b/d$a;->d:Ljava/lang/String;

    .line 7
    iput-wide p5, p0, Lcom/ss/android/downloadlib/addownload/b/d$a;->e:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLcom/ss/android/downloadlib/addownload/b/d$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/ss/android/downloadlib/addownload/b/d$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
