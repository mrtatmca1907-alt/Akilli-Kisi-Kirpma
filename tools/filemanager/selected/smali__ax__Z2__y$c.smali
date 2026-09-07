.class Lax/Z2/y$c;
.super Lax/z3/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lax/Z2/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lax/z3/q<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field h:Z

.field i:Lax/Z2/j$f;

.field final synthetic j:Lax/Z2/y;


# direct methods
.method public constructor <init>(Lax/Z2/y;ZLax/Z2/j$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lax/Z2/y$c;->j:Lax/Z2/y;

    .line 2
    .line 3
    sget-object p1, Lax/z3/q$e;->k0:Lax/z3/q$e;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lax/z3/q;-><init>(Lax/z3/q$e;)V

    .line 6
    .line 7
    .line 8
    iput-boolean p2, p0, Lax/Z2/y$c;->h:Z

    .line 9
    .line 10
    iput-object p3, p0, Lax/Z2/y$c;->i:Lax/Z2/j$f;

    .line 11
    .line 12
    return-void
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
.end method


# virtual methods
.method A(Lcom/alphainventor/filemanager/file/K;Lax/Z2/j$f;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lax/Z2/y$c;->j:Lax/Z2/y;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lax/Z2/y;->x0(Lax/Z2/y;Lcom/alphainventor/filemanager/file/K;)Lcom/alphainventor/filemanager/file/K;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lax/Z2/y$c;->j:Lax/Z2/y;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {v0, v1}, Lax/Z2/y;->y0(Lax/Z2/y;Lcom/alphainventor/filemanager/file/n;)Lcom/alphainventor/filemanager/file/n;

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lax/Z2/y$c;->j:Lax/Z2/y;

    .line 13
    .line 14
    invoke-static {v0, v1}, Lax/Z2/y;->z0(Lax/Z2/y;Lcom/alphainventor/filemanager/file/n;)Lcom/alphainventor/filemanager/file/n;

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    :try_start_0
    iget-object v2, p0, Lax/Z2/y$c;->j:Lax/Z2/y;

    .line 19
    .line 20
    invoke-static {v2}, Lax/Z2/y;->A0(Lax/Z2/y;)Lcom/alphainventor/filemanager/file/o;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {v2, p1, p2, p0}, Lcom/alphainventor/filemanager/file/J;->t2(Lcom/alphainventor/filemanager/file/o;Lcom/alphainventor/filemanager/file/K;Lax/Z2/j$f;Lax/z3/c;)V

    .line 25
    .line 26
    .line 27
    iget-object p2, p0, Lax/Z2/y$c;->j:Lax/Z2/y;

    .line 28
    .line 29
    invoke-virtual {p2}, Lax/Z2/j;->w()Lax/Z2/v;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p1}, Lcom/alphainventor/filemanager/file/K;->p()J

    .line 34
    .line 35
    .line 36
    move-result-wide v2

    .line 37
    invoke-virtual {p2, v2, v3}, Lax/Z2/v;->d(J)V

    .line 38
    .line 39
    .line 40
    iget-object p2, p0, Lax/Z2/y$c;->j:Lax/Z2/y;

    .line 41
    .line 42
    invoke-virtual {p2}, Lax/Z2/j;->w()Lax/Z2/v;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    sget-object v2, Lax/Z2/v$b;->q:Lax/Z2/v$b;

    .line 47
    .line 48
    invoke-virtual {p2, v2, v0}, Lax/Z2/v;->c(Lax/Z2/v$b;I)V
    :try_end_0
    .catch Lax/e3/f; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lax/e3/j; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lax/e3/a; {:try_start_0 .. :try_end_0} :catch_1

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception p2

    .line 53
    goto :goto_1

    .line 54
    :catch_1
    iget-object p2, p0, Lax/Z2/y$c;->j:Lax/Z2/y;

    .line 55
    .line 56
    invoke-virtual {p2}, Lax/Z2/j;->w()Lax/Z2/v;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    sget-object v1, Lax/Z2/v$b;->X:Lax/Z2/v$b;

    .line 61
    .line 62
    invoke-virtual {p2, v1, v0}, Lax/Z2/v;->c(Lax/Z2/v$b;I)V

    .line 63
    .line 64
    .line 65
    iget-object p2, p0, Lax/Z2/y$c;->j:Lax/Z2/y;

    .line 66
    .line 67
    invoke-virtual {p2}, Lax/Z2/j;->w()Lax/Z2/v;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {p1}, Lcom/alphainventor/filemanager/file/n;->B()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p2, p1}, Lax/Z2/v;->b(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :goto_0
    iget-object p1, p0, Lax/Z2/y$c;->j:Lax/Z2/y;

    .line 79
    .line 80
    invoke-virtual {p1, v0}, Lax/Z2/j;->j0(Z)V

    .line 81
    .line 82
    .line 83
    const/4 p1, 0x0

    .line 84
    return p1

    .line 85
    :goto_1
    invoke-virtual {p2}, Lax/e3/f;->a()Z

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    if-eqz p2, :cond_0

    .line 90
    .line 91
    const/4 p1, 0x2

    .line 92
    return p1

    .line 93
    :cond_0
    :try_start_1
    iget-object p2, p0, Lax/Z2/y$c;->j:Lax/Z2/y;

    .line 94
    .line 95
    invoke-static {p2}, Lax/Z2/y;->A0(Lax/Z2/y;)Lcom/alphainventor/filemanager/file/o;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {p1}, Lcom/alphainventor/filemanager/file/K;->C1()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-virtual {v2, v3}, Lcom/alphainventor/filemanager/file/o;->a1(Ljava/lang/String;)Lcom/alphainventor/filemanager/file/n;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-static {p2, v2}, Lax/Z2/y;->y0(Lax/Z2/y;Lcom/alphainventor/filemanager/file/n;)Lcom/alphainventor/filemanager/file/n;

    .line 108
    .line 109
    .line 110
    iget-object p2, p0, Lax/Z2/y$c;->j:Lax/Z2/y;

    .line 111
    .line 112
    invoke-static {p2}, Lax/Z2/y;->A0(Lax/Z2/y;)Lcom/alphainventor/filemanager/file/o;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {p1}, Lcom/alphainventor/filemanager/file/K;->D1()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {v2, p1}, Lcom/alphainventor/filemanager/file/o;->a1(Ljava/lang/String;)Lcom/alphainventor/filemanager/file/n;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-static {p2, p1}, Lax/Z2/y;->z0(Lax/Z2/y;Lcom/alphainventor/filemanager/file/n;)Lcom/alphainventor/filemanager/file/n;
    :try_end_1
    .catch Lax/e3/j; {:try_start_1 .. :try_end_1} :catch_2

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :catch_2
    iget-object p1, p0, Lax/Z2/y$c;->j:Lax/Z2/y;

    .line 129
    .line 130
    invoke-static {p1, v1}, Lax/Z2/y;->y0(Lax/Z2/y;Lcom/alphainventor/filemanager/file/n;)Lcom/alphainventor/filemanager/file/n;

    .line 131
    .line 132
    .line 133
    iget-object p1, p0, Lax/Z2/y$c;->j:Lax/Z2/y;

    .line 134
    .line 135
    invoke-static {p1, v1}, Lax/Z2/y;->z0(Lax/Z2/y;Lcom/alphainventor/filemanager/file/n;)Lcom/alphainventor/filemanager/file/n;

    .line 136
    .line 137
    .line 138
    :goto_2
    return v0
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
.end method

.method protected bridge synthetic g([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lax/Z2/y$c;->w([Ljava/lang/Void;)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method protected bridge synthetic p(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lax/Z2/y$c;->x(Ljava/lang/Integer;)V

    .line 4
    .line 5
    .line 6
    return-void
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method protected bridge synthetic q(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lax/Z2/y$c;->y(Ljava/lang/Integer;)V

    .line 4
    .line 5
    .line 6
    return-void
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method protected varargs w([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2

    .line 1
    iget-boolean p1, p0, Lax/Z2/y$c;->h:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lax/Z2/y$c;->j:Lax/Z2/y;

    .line 6
    .line 7
    invoke-static {p1}, Lax/Z2/y;->w0(Lax/Z2/y;)Lcom/alphainventor/filemanager/file/K;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v0, p0, Lax/Z2/y$c;->i:Lax/Z2/j$f;

    .line 12
    .line 13
    invoke-virtual {p0, p1, v0}, Lax/Z2/y$c;->z(Lcom/alphainventor/filemanager/file/K;Lax/Z2/j$f;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-static {}, Lax/sb/c;->h()Lax/sb/b;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "PROCCED OVERWRITE RECYCLE BIN ERROR"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lax/sb/b;->d(Ljava/lang/String;)Lax/sb/b;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {v0, p1}, Lax/sb/b;->h(Ljava/lang/Object;)Lax/sb/b;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lax/sb/b;->i()V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object p1, p0, Lax/Z2/y$c;->j:Lax/Z2/y;

    .line 41
    .line 42
    invoke-static {p1}, Lax/Z2/y;->B0(Lax/Z2/y;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    const/4 v0, 0x0

    .line 51
    if-nez p1, :cond_2

    .line 52
    .line 53
    invoke-virtual {p0}, Lax/z3/q;->isCancelled()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    return-object p1

    .line 64
    :cond_1
    iget-object p1, p0, Lax/Z2/y$c;->j:Lax/Z2/y;

    .line 65
    .line 66
    invoke-static {p1}, Lax/Z2/y;->B0(Lax/Z2/y;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Ljava/util/AbstractQueue;->remove()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    check-cast p1, Lcom/alphainventor/filemanager/file/K;

    .line 75
    .line 76
    sget-object v0, Lax/Z2/j$f;->q:Lax/Z2/j$f;

    .line 77
    .line 78
    invoke-virtual {p0, p1, v0}, Lax/Z2/y$c;->A(Lcom/alphainventor/filemanager/file/K;Lax/Z2/j$f;)I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_0

    .line 83
    .line 84
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    return-object p1

    .line 89
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    return-object p1
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
.end method

.method protected x(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lax/Z2/y$c;->j:Lax/Z2/y;

    .line 2
    .line 3
    invoke-virtual {p1}, Lax/Z2/j;->e0()V

    .line 4
    .line 5
    .line 6
    return-void
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method protected y(Ljava/lang/Integer;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lax/Z2/y$c;->j:Lax/Z2/y;

    .line 8
    .line 9
    invoke-virtual {p1}, Lax/Z2/j;->o()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lax/Z2/y$c;->j:Lax/Z2/y;

    .line 14
    .line 15
    invoke-static {v0}, Lax/Z2/y;->w0(Lax/Z2/y;)Lcom/alphainventor/filemanager/file/K;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lcom/alphainventor/filemanager/file/K;->isDirectory()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-static {v0, v1, p1}, Lax/Z2/y;->C0(Lax/Z2/y;ZI)V

    .line 28
    .line 29
    .line 30
    return-void
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
.end method

.method z(Lcom/alphainventor/filemanager/file/K;Lax/Z2/j$f;)I
    .locals 2

    .line 1
    sget-object v0, Lax/Z2/y$b;->a:[I

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    aget p2, v0, p2

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p2, v0, :cond_3

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq p2, v1, :cond_2

    .line 14
    .line 15
    const/4 p1, 0x3

    .line 16
    const/4 v1, 0x0

    .line 17
    if-eq p2, p1, :cond_1

    .line 18
    .line 19
    const/4 p1, 0x4

    .line 20
    if-eq p2, p1, :cond_0

    .line 21
    .line 22
    return v1

    .line 23
    :cond_0
    iget-object p1, p0, Lax/Z2/y$c;->j:Lax/Z2/y;

    .line 24
    .line 25
    invoke-virtual {p1}, Lax/Z2/j;->i()V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lax/Z2/y$c;->j:Lax/Z2/y;

    .line 29
    .line 30
    invoke-virtual {p1}, Lax/Z2/j;->w()Lax/Z2/v;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    sget-object p2, Lax/Z2/v$b;->Y:Lax/Z2/v$b;

    .line 35
    .line 36
    invoke-virtual {p1, p2, v0}, Lax/Z2/v;->c(Lax/Z2/v$b;I)V

    .line 37
    .line 38
    .line 39
    return v1

    .line 40
    :cond_1
    iget-object p1, p0, Lax/Z2/y$c;->j:Lax/Z2/y;

    .line 41
    .line 42
    invoke-virtual {p1}, Lax/Z2/j;->w()Lax/Z2/v;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    sget-object p2, Lax/Z2/v$b;->Y:Lax/Z2/v$b;

    .line 47
    .line 48
    invoke-virtual {p1, p2, v0}, Lax/Z2/v;->c(Lax/Z2/v$b;I)V

    .line 49
    .line 50
    .line 51
    return v1

    .line 52
    :cond_2
    sget-object p2, Lax/Z2/j$f;->Y:Lax/Z2/j$f;

    .line 53
    .line 54
    invoke-virtual {p0, p1, p2}, Lax/Z2/y$c;->A(Lcom/alphainventor/filemanager/file/K;Lax/Z2/j$f;)I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    return p1

    .line 59
    :cond_3
    sget-object p2, Lax/Z2/j$f;->Z:Lax/Z2/j$f;

    .line 60
    .line 61
    invoke-virtual {p0, p1, p2}, Lax/Z2/y$c;->A(Lcom/alphainventor/filemanager/file/K;Lax/Z2/j$f;)I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    return p1
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
.end method
