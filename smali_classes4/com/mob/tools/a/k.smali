.class public interface abstract Lcom/mob/tools/a/k;
.super Ljava/lang/Object;


# virtual methods
.method public abstract a(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract a()Ljava/lang/String;
.end method

.method public abstract a(I)Ljava/lang/String;
.end method

.method public abstract a(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract a(Ljava/net/NetworkInterface;)Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/NetworkInterface;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Landroid/content/Intent;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;JFLandroid/location/LocationListener;)V
.end method

.method public abstract b(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract b(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
.end method

.method public abstract b(Ljava/lang/String;)Landroid/location/Location;
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/net/NetworkInterface;",
            ">;"
        }
    .end annotation
.end method

.method public abstract d()I
.end method

.method public abstract e()I
.end method

.method public abstract f()Landroid/content/pm/ApplicationInfo;
.end method
