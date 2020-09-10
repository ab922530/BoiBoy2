-- returns a list of all grid indices of the pedestal items
function getPedestalItems()
  local entityGridList = {}
  local allEntitiesList = getAllRoomEntities()
  local listIndex = 1
  for _, entity in pairs(allEntitiesList) do
    if isPedestalItem(entity) then
      entityGridList[listIndex] = entity
      listIndex = listIndex + 1
    end
  end
  return entityGridList
end

-- returns a list of all grid indices of the pedestal items
function getPassivePedestalItems()
  return filter(isPassiveItem, getPedestalItems())
end

-- returns the value that corresponds to what item it is
function getPedestalItemId(pedestalItem)
  return pedestalItem.SubType
end

-- returns true if the given entity is a pedestal item
function isPedestalItem(entity)
  return entity.Type == 5 and entity.Variant == 100 and entity.SubType ~= 0
end

function isPassiveItem(pedestalItem)
  local itemId = getPedestalItemId(pedestalItem)

  return (itemId == 320 or
    itemId == 11 or
    itemId == 245 or
    itemId == 191 or
    itemId == 116 or
    itemId == 18 or
    itemId == 132 or
    itemId == 74 or
    itemId == 346 or
    itemId == 230 or
    itemId == 188 or
    itemId == 214 or
    itemId == 161 or
    itemId == 222 or
    itemId == 308 or
    itemId == 300 or
    itemId == 207 or
    itemId == 231 or
    itemId == 272 or
    itemId == 274 or
    itemId == 247 or
    itemId == 279 or
    itemId == 260 or
    itemId == 226 or
    itemId == 119 or
    itemId == 254 or
    itemId == 7 or
    itemId == 157 or
    itemId == 342 or
    itemId == 246 or
    itemId == 273 or
    itemId == 140 or
    itemId == 125 or
    itemId == 250 or
    itemId == 131 or
    itemId == 19 or
    itemId == 198 or
    itemId == 25 or
    itemId == 118 or
    itemId == 337 or
    itemId == 8 or
    itemId == 129 or
    itemId == 144 or
    itemId == 209 or
    itemId == 340 or
    itemId == 319 or
    itemId == 301 or
    itemId == 307 or
    itemId == 165 or
    itemId == 162 or
    itemId == 216 or
    itemId == 208 or
    itemId == 62 or
    itemId == 154 or
    itemId == 69 or
    itemId == 241 or
    itemId == 224 or
    itemId == 4 or
    itemId == 73 or
    itemId == 48 or
    itemId == 316 or
    itemId == 170 or
    itemId == 278 or
    itemId == 259 or
    itemId == 117 or
    itemId == 81 or
    itemId == 185 or
    itemId == 336 or
    itemId == 237 or
    itemId == 113 or
    itemId == 24 or
    itemId == 23 or
    itemId == 57 or
    itemId == 52 or
    itemId == 265 or
    itemId == 236 or
    itemId == 168 or
    itemId == 310 or
    itemId == 240 or
    itemId == 204 or
    itemId == 179 or
    itemId == 257 or
    itemId == 128 or
    itemId == 318 or
    itemId == 163 or
    itemId == 225 or
    itemId == 210 or
    itemId == 215 or
    itemId == 331 or
    itemId == 70 or
    itemId == 112 or
    itemId == 206 or
    itemId == 212 or
    itemId == 187 or
    itemId == 134 or
    itemId == 156 or
    itemId == 10 or
    itemId == 167 or
    itemId == 269 or
    itemId == 248 or
    itemId == 184 or
    itemId == 313 or
    itemId == 178 or
    itemId == 256 or
    itemId == 203 or
    itemId == 242 or
    itemId == 148 or
    itemId == 234 or
    itemId == 149 or
    itemId == 201 or
    itemId == 276 or
    itemId == 197 or
    itemId == 311 or
    itemId == 266 or
    itemId == 238 or
    itemId == 239 or
    itemId == 343 or
    itemId == 332 or
    itemId == 270 or
    itemId == 302 or
    itemId == 15 or
    itemId == 304 or
    itemId == 275 or
    itemId == 277 or
    itemId == 252 or
    itemId == 96 or
    itemId == 88 or
    itemId == 99 or
    itemId == 100 or
    itemId == 87 or
    itemId == 82 or
    itemId == 213 or
    itemId == 46 or
    itemId == 22 or
    itemId == 312 or
    itemId == 194 or
    itemId == 12 or
    itemId == 253 or
    itemId == 53 or
    itemId == 344 or
    itemId == 193 or
    itemId == 202 or
    itemId == 71 or
    itemId == 258 or
    itemId == 262 or
    itemId == 173 or
    itemId == 195 or
    itemId == 110 or
    itemId == 55 or
    itemId == 200 or
    itemId == 30 or
    itemId == 199 or
    itemId == 114 or
    itemId == 31 or
    itemId == 228 or
    itemId == 139 or
    itemId == 29 or
    itemId == 217 or
    itemId == 109 or
    itemId == 322 or
    itemId == 229 or
    itemId == 106 or
    itemId == 153 or
    itemId == 5 or
    itemId == 317 or
    itemId == 271 or
    itemId == 6 or
    itemId == 121 or
    itemId == 120 or
    itemId == 219 or
    itemId == 115 or
    itemId == 141 or
    itemId == 51 or
    itemId == 75 or
    itemId == 227 or
    itemId == 309 or
    itemId == 218 or
    itemId == 169 or
    itemId == 261 or
    itemId == 281 or
    itemId == 190 or
    itemId == 223 or
    itemId == 174 or
    itemId == 16 or
    itemId == 95 or
    itemId == 267 or
    itemId == 14 or
    itemId == 72 or
    itemId == 268 or
    itemId == 26 or
    itemId == 221 or
    itemId == 94 or
    itemId == 182 or
    itemId == 172 or
    itemId == 220 or
    itemId == 339 or
    itemId == 306 or
    itemId == 321 or
    itemId == 142 or
    itemId == 305 or
    itemId == 255 or
    itemId == 205 or
    itemId == 280 or
    itemId == 67 or
    itemId == 9 or
    itemId == 17 or
    itemId == 264 or
    itemId == 189 or
    itemId == 330 or
    itemId == 143 or
    itemId == 91 or
    itemId == 211 or
    itemId == 89 or
    itemId == 159 or
    itemId == 3 or
    itemId == 196 or
    itemId == 251 or
    itemId == 64 or
    itemId == 176 or
    itemId == 50 or
    itemId == 138 or
    itemId == 232 or
    itemId == 315 or
    itemId == 92 or
    itemId == 345 or
    itemId == 299 or
    itemId == 244 or
    itemId == 68 or
    itemId == 152 or
    itemId == 63 or
    itemId == 28 or
    itemId == 180 or
    itemId == 334 or
    itemId == 103 or
    itemId == 21 or
    itemId == 101 or
    itemId == 2 or
    itemId == 60 or
    itemId == 329 or
    itemId == 79 or
    itemId == 333 or
    itemId == 151 or
    itemId == 328 or
    itemId == 80 or
    itemId == 104 or
    itemId == 155 or
    itemId == 327 or
    itemId == 98 or
    itemId == 1 or
    itemId == 90 or
    itemId == 335 or
    itemId == 13 or
    itemId == 108 or
    itemId == 249 or
    itemId == 314 or
    itemId == 233 or
    itemId == 183 or
    itemId == 341 or
    itemId == 150 or
    itemId == 20 or
    itemId == 54 or
    itemId == 243 or
    itemId == 303 or
    itemId == 122 or
    itemId == 32 or
    itemId == 27 or
    itemId == 76 or
    itemId == 359 or
    itemId == 408 or
    itemId == 391 or
    itemId == 438 or
    itemId == 420 or
    itemId == 353 or
    itemId == 385 or
    itemId == 377 or
    itemId == 412 or
    itemId == 356 or
    itemId == 387 or
    itemId == 402 or
    itemId == 372 or
    itemId == 423 or
    itemId == 369 or
    itemId == 354 or
    itemId == 415 or
    itemId == 371 or
    itemId == 373 or
    itemId == 416 or
    itemId == 381 or
    itemId == 409 or
    itemId == 368 or
    itemId == 410 or
    itemId == 401 or
    itemId == 404 or
    itemId == 361 or
    itemId == 364 or
    itemId == 418 or
    itemId == 405 or
    itemId == 432 or
    itemId == 398 or
    itemId == 429 or
    itemId == 374 or
    itemId == 375 or
    itemId == 413 or
    itemId == 360 or
    itemId == 388 or
    itemId == 440 or
    itemId == 362 or
    itemId == 384 or
    itemId == 435 or
    itemId == 365 or
    itemId == 411 or
    itemId == 394 or
    itemId == 399 or
    itemId == 436 or
    itemId == 355 or
    itemId == 414 or
    itemId == 370 or
    itemId == 431 or
    itemId == 433 or
    itemId == 425 or
    itemId == 378 or
    itemId == 426 or
    itemId == 430 or
    itemId == 380 or
    itemId == 428 or
    itemId == 379 or
    itemId == 407 or
    itemId == 376 or
    itemId == 389 or
    itemId == 424 or
    itemId == 366 or
    itemId == 390 or
    itemId == 393 or
    itemId == 400 or
    itemId == 403 or
    itemId == 367 or
    itemId == 417 or
    itemId == 363 or
    itemId == 395 or
    itemId == 358 or
    itemId == 350 or
    itemId == 397 or
    itemId == 392 or
    itemId == 526 or
    itemId == 491 or
    itemId == 493 or
    itemId == 465 or
    itemId == 528 or
    itemId == 511 or
    itemId == 443 or
    itemId == 506 or
    itemId == 458 or
    itemId == 473 or
    itemId == 535 or
    itemId == 509 or
    itemId == 513 or
    itemId == 549 or
    itemId == 514 or
    itemId == 551 or
    itemId == 518 or
    itemId == 497 or
    itemId == 453 or
    itemId == 457 or
    itemId == 466 or
    itemId == 455 or
    itemId == 546 or
    itemId == 442 or
    itemId == 446 or
    itemId == 530 or
    itemId == 469 or
    itemId == 547 or
    itemId == 445 or
    itemId == 498 or
    itemId == 499 or
    itemId == 496 or
    itemId == 462 or
    itemId == 450 or
    itemId == 517 or
    itemId == 467 or
    itemId == 540 or
    itemId == 495 or
    itemId == 460 or
    itemId == 464 or
    itemId == 501 or
    itemId == 531 or
    itemId == 543 or
    itemId == 470 or
    itemId == 494 or
    itemId == 548 or
    itemId == 520 or
    itemId == 472 or
    itemId == 532 or
    itemId == 502 or
    itemId == 444 or
    itemId == 525 or
    itemId == 519 or
    itemId == 471 or
    itemId == 537 or
    itemId == 447 or
    itemId == 503 or
    itemId == 538 or
    itemId == 541 or
    itemId == 449 or
    itemId == 456 or
    itemId == 508 or
    itemId == 539 or
    itemId == 461 or
    itemId == 544 or
    itemId == 505 or
    itemId == 454 or
    itemId == 529 or
    itemId == 500 or
    itemId == 534 or
    itemId == 468 or
    itemId == 448 or
    itemId == 459 or
    itemId == 542 or
    itemId == 463 or
    itemId == 451 or
    itemId == 524 or
    itemId == 474 or
    itemId == 533 or
    itemId == 452 or
    itemId == 492)
end