-- 14102
-- added already

-- 14103
ALTER TABLE db_version CHANGE COLUMN required_14102_01_mangos_cls_rework required_14103_01_mangos_pet_spell_lists bit;

DROP TABLE IF EXISTS pet_autocast_spell_list;
CREATE TABLE pet_autocast_spell_list (
`CreatureEntry` INT UNSIGNED NOT NULL,
`SpellId` INT UNSIGNED NOT NULL,
`CombatCondition` INT NOT NULL DEFAULT '-1',
`TargetId` INT NOT NULL,
`Comments` VARCHAR(255) NOT NULL,
PRIMARY KEY(`CreatureEntry`, `SpellId`)
);

-- 14104
ALTER TABLE db_version CHANGE COLUMN required_14103_01_mangos_pet_spell_lists required_14104_01_mangos_spell_threat_mask bit;

ALTER TABLE `spell_threat` ADD COLUMN `inverseEffectMask` INT UNSIGNED DEFAULT '0' AFTER `ap_bonus`;
