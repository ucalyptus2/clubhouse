.class public final synthetic Ld0/i/c/t/i;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@21.1.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final h:Landroid/content/Context;

.field public final i:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld0/i/c/t/i;->h:Landroid/content/Context;

    iput-object p2, p0, Ld0/i/c/t/i;->i:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Ld0/i/c/t/i;->h:Landroid/content/Context;

    iget-object v1, p0, Ld0/i/c/t/i;->i:Landroid/content/Intent;

    .line 1
    invoke-static {}, Ld0/i/c/t/l0;->a()Ld0/i/c/t/l0;

    move-result-object v2

    .line 2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "FirebaseMessaging"

    const/4 v4, 0x3

    .line 3
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "FirebaseMessaging"

    const-string v5, "Starting service"

    .line 4
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, v2, Ld0/i/c/t/l0;->e:Ljava/util/Queue;

    .line 5
    invoke-interface {v3, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.google.firebase.MESSAGING_EVENT"

    .line 6
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    monitor-enter v2

    :try_start_0
    iget-object v3, v2, Ld0/i/c/t/l0;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    monitor-exit v2

    goto/16 :goto_5

    .line 9
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v3, :cond_7

    .line 10
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v3, :cond_2

    goto/16 :goto_3

    .line 11
    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    const-string v5, "."

    .line 12
    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_4
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object v3, v2, Ld0/i/c/t/l0;->b:Ljava/lang/String;

    goto :goto_1

    .line 14
    :cond_5
    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iput-object v3, v2, Ld0/i/c/t/l0;->b:Ljava/lang/String;

    .line 15
    :goto_1
    iget-object v3, v2, Ld0/i/c/t/l0;->b:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    goto :goto_5

    .line 16
    :cond_6
    :goto_2
    :try_start_2
    iget-object v6, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x5e

    add-int/2addr v7, v8

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Error resolving target intent service, skipping classname enforcement. Resolved service was: "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "FirebaseMessaging"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    goto :goto_4

    :cond_7
    :goto_3
    :try_start_3
    const-string v3, "FirebaseMessaging"

    const-string v6, "Failed to resolve target intent service, skipping classname enforcement"

    .line 17
    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v2

    :goto_4
    move-object v3, v5

    :goto_5
    if-eqz v3, :cond_a

    const-string v5, "FirebaseMessaging"

    .line 18
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "Restricting intent to a specific service: "

    .line 19
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    .line 20
    :cond_8
    new-instance v5, Ljava/lang/String;

    .line 21
    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    :goto_6
    const-string v5, "FirebaseMessaging"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_9
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    :cond_a
    :try_start_4
    invoke-virtual {v2, v0}, Ld0/i/c/t/l0;->c(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 24
    invoke-static {v0, v1}, Ld0/i/c/t/v0;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_7

    .line 25
    :cond_b
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "FirebaseMessaging"

    const-string v2, "Missing wake lock permission, service start may be delayed"

    .line 26
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    if-nez v0, :cond_c

    const-string v0, "FirebaseMessaging"

    const-string v1, "Error while delivering the message: ServiceIntent not found."

    .line 27
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    const/16 v0, 0x194

    goto :goto_8

    :cond_c
    const/4 v0, -0x1

    goto :goto_8

    :catch_0
    move-exception v0

    .line 28
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x2d

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Failed to start service while in background: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "FirebaseMessaging"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x192

    goto :goto_8

    :catch_1
    move-exception v0

    const-string v1, "FirebaseMessaging"

    const-string v2, "Error while delivering the message to the serviceIntent"

    .line 29
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x191

    .line 30
    :goto_8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    .line 31
    monitor-exit v2

    throw v0
.end method
