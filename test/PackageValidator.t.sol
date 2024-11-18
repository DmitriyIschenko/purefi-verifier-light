// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import "../src/libraries/PureFiPackageValidate.sol";
import "../src/libraries/SafePureFiValidate.sol";
import "./utils/TestPackage.sol";
import "./utils/WorkaroundFunctions.sol";

contract PackageValidatorTest is Test {
    using SafePureFiValidate for bytes;

    TestPackage internal testPackage;
    WorkaroundFunctions internal helperFunctions;


    function setUp() public {
        testPackage = new TestPackage();
        helperFunctions = new WorkaroundFunctions();
    }


    function test_ShouldReturnCorrectPackageType() public view {
        assertEq(helperFunctions.workaround_packageType(abi.encode(testPackage.getTestPackageType1())), testPackage.PACKAGE_TYPE_1());
        assertEq(helperFunctions.workaround_packageType(abi.encode(testPackage.getTestPackageType2())), testPackage.PACKAGE_TYPE_2());
        assertEq(helperFunctions.workaround_packageType(abi.encode(testPackage.getTestPackageType32())), testPackage.PACKAGE_TYPE_32());
        assertEq(helperFunctions.workaround_packageType(abi.encode(testPackage.getTestPackageType48())), testPackage.PACKAGE_TYPE_48());
        assertEq(helperFunctions.workaround_packageType(abi.encode(testPackage.getTestPackageType64())), testPackage.PACKAGE_TYPE_64());
        assertEq(helperFunctions.workaround_packageType(abi.encode(testPackage.getTestPackageType96())), testPackage.PACKAGE_TYPE_96());
        assertEq(helperFunctions.workaround_packageType(abi.encode(testPackage.getTestPackageType112())), testPackage.PACKAGE_TYPE_112());
        assertEq(helperFunctions.workaround_packageType(abi.encode(testPackage.getTestPackageType128())), testPackage.PACKAGE_TYPE_128());
        assertEq(helperFunctions.workaround_packageType(abi.encode(testPackage.getTestPackageType160())), testPackage.PACKAGE_TYPE_160());
        assertEq(helperFunctions.workaround_packageType(abi.encode(testPackage.getTestPackageType176())), testPackage.PACKAGE_TYPE_176());
        assertEq(helperFunctions.workaround_packageType(abi.encode(testPackage.getTestPackageType192())), testPackage.PACKAGE_TYPE_192());
        assertEq(helperFunctions.workaround_packageType(abi.encode(testPackage.getTestPackageType224())), testPackage.PACKAGE_TYPE_224());
        assertEq(helperFunctions.workaround_packageType(abi.encode(testPackage.getTestPackageType240())), testPackage.PACKAGE_TYPE_240());
    }

    function test_ShouldReturnCorrectSession() public view {
        assertEq(helperFunctions.workaround_session(abi.encode(testPackage.getTestPackageType1())), testPackage.SESSION());
        assertEq(helperFunctions.workaround_session(abi.encode(testPackage.getTestPackageType2())), testPackage.SESSION());
        assertEq(helperFunctions.workaround_session(abi.encode(testPackage.getTestPackageType32())), testPackage.SESSION());
        assertEq(helperFunctions.workaround_session(abi.encode(testPackage.getTestPackageType48())), testPackage.SESSION());
        assertEq(helperFunctions.workaround_session(abi.encode(testPackage.getTestPackageType64())), testPackage.SESSION());
        assertEq(helperFunctions.workaround_session(abi.encode(testPackage.getTestPackageType96())), testPackage.SESSION());
        assertEq(helperFunctions.workaround_session(abi.encode(testPackage.getTestPackageType112())), testPackage.SESSION());
        assertEq(helperFunctions.workaround_session(abi.encode(testPackage.getTestPackageType128())), testPackage.SESSION());
        assertEq(helperFunctions.workaround_session(abi.encode(testPackage.getTestPackageType160())), testPackage.SESSION());
        assertEq(helperFunctions.workaround_session(abi.encode(testPackage.getTestPackageType176())), testPackage.SESSION());
        assertEq(helperFunctions.workaround_session(abi.encode(testPackage.getTestPackageType192())), testPackage.SESSION());
        assertEq(helperFunctions.workaround_session(abi.encode(testPackage.getTestPackageType224())), testPackage.SESSION());
        assertEq(helperFunctions.workaround_session(abi.encode(testPackage.getTestPackageType240())), testPackage.SESSION());
    }

    function test_ShouldReturnCorrectRule() public view {
        assertEq(helperFunctions.workaround_rule(abi.encode(testPackage.getTestPackageType1())), testPackage.RULE());
        assertEq(helperFunctions.workaround_rule(abi.encode(testPackage.getTestPackageType2())), testPackage.RULE());
        assertEq(helperFunctions.workaround_rule(abi.encode(testPackage.getTestPackageType32())), testPackage.RULE());
        assertEq(helperFunctions.workaround_rule(abi.encode(testPackage.getTestPackageType48())), testPackage.RULE());
        assertEq(helperFunctions.workaround_rule(abi.encode(testPackage.getTestPackageType64())), testPackage.RULE());
        assertEq(helperFunctions.workaround_rule(abi.encode(testPackage.getTestPackageType96())), testPackage.RULE());
        assertEq(helperFunctions.workaround_rule(abi.encode(testPackage.getTestPackageType112())), testPackage.RULE());
        assertEq(helperFunctions.workaround_rule(abi.encode(testPackage.getTestPackageType128())), testPackage.RULE());
        assertEq(helperFunctions.workaround_rule(abi.encode(testPackage.getTestPackageType160())), testPackage.RULE());
        assertEq(helperFunctions.workaround_rule(abi.encode(testPackage.getTestPackageType176())), testPackage.RULE());
        assertEq(helperFunctions.workaround_rule(abi.encode(testPackage.getTestPackageType192())), testPackage.RULE());
        assertEq(helperFunctions.workaround_rule(abi.encode(testPackage.getTestPackageType224())), testPackage.RULE());
        assertEq(helperFunctions.workaround_rule(abi.encode(testPackage.getTestPackageType240())), testPackage.RULE());
    }

    function test_ShouldReturnCorrectFrom() public view {
        assertEq(helperFunctions.workaround_from(abi.encode(testPackage.getTestPackageType1())), testPackage.FROM());
        assertEq(helperFunctions.workaround_from(abi.encode(testPackage.getTestPackageType2())), testPackage.FROM());
        assertEq(helperFunctions.workaround_from(abi.encode(testPackage.getTestPackageType32())), testPackage.FROM());
        assertEq(helperFunctions.workaround_from(abi.encode(testPackage.getTestPackageType48())), testPackage.FROM());
        assertEq(helperFunctions.workaround_from(abi.encode(testPackage.getTestPackageType64())), testPackage.FROM());
        assertEq(helperFunctions.workaround_from(abi.encode(testPackage.getTestPackageType96())), testPackage.FROM());
        assertEq(helperFunctions.workaround_from(abi.encode(testPackage.getTestPackageType112())), testPackage.FROM());
        assertEq(helperFunctions.workaround_from(abi.encode(testPackage.getTestPackageType128())), testPackage.FROM());
        assertEq(helperFunctions.workaround_from(abi.encode(testPackage.getTestPackageType160())), testPackage.FROM());
        assertEq(helperFunctions.workaround_from(abi.encode(testPackage.getTestPackageType176())), testPackage.FROM());
        assertEq(helperFunctions.workaround_from(abi.encode(testPackage.getTestPackageType192())), testPackage.FROM());
        assertEq(helperFunctions.workaround_from(abi.encode(testPackage.getTestPackageType224())), testPackage.FROM());
        assertEq(helperFunctions.workaround_from(abi.encode(testPackage.getTestPackageType240())), testPackage.FROM());
    }

    function test_ShouldReturnCorrectTo() public view {
        assertEq(helperFunctions.workaround_to(abi.encode(testPackage.getTestPackageType1())), testPackage.TO());
        assertEq(helperFunctions.workaround_to(abi.encode(testPackage.getTestPackageType2())), testPackage.TO());
        assertEq(helperFunctions.workaround_to(abi.encode(testPackage.getTestPackageType32())), testPackage.TO());
        assertEq(helperFunctions.workaround_to(abi.encode(testPackage.getTestPackageType48())), testPackage.TO());
        assertEq(helperFunctions.workaround_to(abi.encode(testPackage.getTestPackageType64())), testPackage.TO());
        assertEq(helperFunctions.workaround_to(abi.encode(testPackage.getTestPackageType96())), testPackage.TO());
        assertEq(helperFunctions.workaround_to(abi.encode(testPackage.getTestPackageType112())), testPackage.TO());
        assertEq(helperFunctions.workaround_to(abi.encode(testPackage.getTestPackageType128())), testPackage.TO());
        assertEq(helperFunctions.workaround_to(abi.encode(testPackage.getTestPackageType160())), testPackage.TO());
        assertEq(helperFunctions.workaround_to(abi.encode(testPackage.getTestPackageType176())), testPackage.TO());
        assertEq(helperFunctions.workaround_to(abi.encode(testPackage.getTestPackageType192())), testPackage.TO());
        assertEq(helperFunctions.workaround_to(abi.encode(testPackage.getTestPackageType224())), testPackage.TO());
        assertEq(helperFunctions.workaround_to(abi.encode(testPackage.getTestPackageType240())), testPackage.TO());
    }

    function test_ShouldReturnCorrectIntermediary() public view {
        assertEq(helperFunctions.workaround_intermediary(abi.encode(testPackage.getTestPackageType128())), testPackage.INTERMEDIARY());
        assertEq(helperFunctions.workaround_intermediary(abi.encode(testPackage.getTestPackageType160())), testPackage.INTERMEDIARY());
        assertEq(helperFunctions.workaround_intermediary(abi.encode(testPackage.getTestPackageType176())), testPackage.INTERMEDIARY());
        assertEq(helperFunctions.workaround_intermediary(abi.encode(testPackage.getTestPackageType192())), testPackage.INTERMEDIARY());
        assertEq(helperFunctions.workaround_intermediary(abi.encode(testPackage.getTestPackageType224())), testPackage.INTERMEDIARY());
        assertEq(helperFunctions.workaround_intermediary(abi.encode(testPackage.getTestPackageType240())), testPackage.INTERMEDIARY());
    }

    function test_ShouldRevertIntermediaryType1() public {
        bytes memory data = abi.encode(testPackage.getTestPackageType1());
        vm.expectRevert(SafePureFiValidate.MissingIntermediaryFlagError.selector);
        helperFunctions.workaround_intermediary(data);
    }

    function test_ShouldRevertIntermediaryType2() public {
        bytes memory data = abi.encode(testPackage.getTestPackageType2());
        vm.expectRevert(SafePureFiValidate.MissingIntermediaryFlagError.selector);
        helperFunctions.workaround_intermediary(data);
    }

    function test_ShouldRevertIntermediaryType32() public {
        bytes memory data = abi.encode(testPackage.getTestPackageType32());
        vm.expectRevert(SafePureFiValidate.MissingIntermediaryFlagError.selector);
        helperFunctions.workaround_intermediary(data);
    }

    function test_ShouldRevertIntermediaryType48() public {
        bytes memory data = abi.encode(testPackage.getTestPackageType48());
        vm.expectRevert(SafePureFiValidate.MissingIntermediaryFlagError.selector);
        helperFunctions.workaround_intermediary(data);
    }

    function test_ShouldRevertIntermediaryType64() public {
        bytes memory data = abi.encode(testPackage.getTestPackageType64());
        vm.expectRevert(SafePureFiValidate.MissingIntermediaryFlagError.selector);
        helperFunctions.workaround_intermediary(data);
    }

    function test_ShouldRevertIntermediaryType96() public {
        bytes memory data = abi.encode(testPackage.getTestPackageType96());
        vm.expectRevert(SafePureFiValidate.MissingIntermediaryFlagError.selector);
        helperFunctions.workaround_intermediary(data);
    }

    function test_ShouldRevertIntermediaryType112() public {
        bytes memory data = abi.encode(testPackage.getTestPackageType112());
        vm.expectRevert(SafePureFiValidate.MissingIntermediaryFlagError.selector);
        helperFunctions.workaround_intermediary(data);
    }

    function test_ShouldReturnCorrectPayee() view public {
        assertEq(helperFunctions.workaround_payee(abi.encode(testPackage.getTestPackageType64())), testPackage.PAYEE());
        assertEq(helperFunctions.workaround_payee(abi.encode(testPackage.getTestPackageType96())), testPackage.PAYEE());
        assertEq(helperFunctions.workaround_payee(abi.encode(testPackage.getTestPackageType112())), testPackage.PAYEE());
        assertEq(helperFunctions.workaround_payee(abi.encode(testPackage.getTestPackageType192())), testPackage.PAYEE());
        assertEq(helperFunctions.workaround_payee(abi.encode(testPackage.getTestPackageType224())), testPackage.PAYEE());
        assertEq(helperFunctions.workaround_payee(abi.encode(testPackage.getTestPackageType240())), testPackage.PAYEE());
    }

    function test_ShouldRevertPayeeType1() public {
        bytes memory data = abi.encode(testPackage.getTestPackageType1());
        vm.expectRevert(SafePureFiValidate.MissingPaymentDataError.selector);
        helperFunctions.workaround_payee(data);
    }

    function test_ShouldRevertPayeeType2() public {
        bytes memory data = abi.encode(testPackage.getTestPackageType2());
        vm.expectRevert(SafePureFiValidate.MissingPaymentDataError.selector);
        helperFunctions.workaround_payee(data);
    }

    function test_ShouldRevertPayeeType32() public {
        bytes memory data = abi.encode(testPackage.getTestPackageType32());
        vm.expectRevert(SafePureFiValidate.MissingPaymentDataError.selector);
        helperFunctions.workaround_payee(data);
    }

    function test_ShouldRevertPayeeType48() public {
        bytes memory data = abi.encode(testPackage.getTestPackageType48());
        vm.expectRevert(SafePureFiValidate.MissingPaymentDataError.selector);
        helperFunctions.workaround_payee(data);
    }

    function test_ShouldRevertPayeeType128() public {
        bytes memory data = abi.encode(testPackage.getTestPackageType128());
        vm.expectRevert(SafePureFiValidate.MissingPaymentDataError.selector);
        helperFunctions.workaround_payee(data);
    }

    function test_ShouldRevertPayeeType160() public {
        bytes memory data = abi.encode(testPackage.getTestPackageType160());
        vm.expectRevert(SafePureFiValidate.MissingPaymentDataError.selector);
        helperFunctions.workaround_payee(data);
    }


    function test_ShouldRevertPayeeType176() public {
        bytes memory data = abi.encode(testPackage.getTestPackageType176());
        vm.expectRevert(SafePureFiValidate.MissingPaymentDataError.selector);
        helperFunctions.workaround_payee(data);
    }


    function test_ShouldReturnCorrectPaymentDataType64() public view {
        (address token, uint256 amount) = helperFunctions.workaround_paymentData(abi.encode(testPackage.getTestPackageType64()));
        assertEq(helperFunctions.workaround_encodeTokenData(token, testPackage.DECIMALS(), amount), testPackage.PAYMENT_DATA());
    }


    function test_ShouldReturnCorrectPaymentDataType96() public view {
        (address token, uint256 amount) = helperFunctions.workaround_paymentData(abi.encode(testPackage.getTestPackageType96()));
        assertEq(helperFunctions.workaround_encodeTokenData(token, testPackage.DECIMALS(), amount), testPackage.PAYMENT_DATA());
    }


    function test_ShouldReturnCorrectPaymentDataType112() public view {
        (address token, uint256 amount) = helperFunctions.workaround_paymentData(abi.encode(testPackage.getTestPackageType112()));
        assertEq(helperFunctions.workaround_encodeTokenData(token, testPackage.DECIMALS(), amount), testPackage.PAYMENT_DATA());
    }


    function test_ShouldReturnCorrectPaymentDataType192() public view {
        (address token, uint256 amount) = helperFunctions.workaround_paymentData(abi.encode(testPackage.getTestPackageType192()));
        assertEq(helperFunctions.workaround_encodeTokenData(token, testPackage.DECIMALS(), amount), testPackage.PAYMENT_DATA());
    }


    function test_ShouldReturnCorrectPaymentDataType224() public view {
        (address token, uint256 amount) = helperFunctions.workaround_paymentData(abi.encode(testPackage.getTestPackageType224()));
        assertEq(helperFunctions.workaround_encodeTokenData(token, testPackage.DECIMALS(), amount), testPackage.PAYMENT_DATA());
    }


    function test_ShouldReturnCorrectPaymentDataType240() public view {
        (address token, uint256 amount) = helperFunctions.workaround_paymentData(abi.encode(testPackage.getTestPackageType240()));
        assertEq(helperFunctions.workaround_encodeTokenData(token, testPackage.DECIMALS(), amount), testPackage.PAYMENT_DATA());
    }

    function test_ShouldRevertPaymentDataType1() public {
        bytes memory data = abi.encode(testPackage.getTestPackageType1());
        vm.expectRevert(SafePureFiValidate.MissingPaymentDataError.selector);
        helperFunctions.workaround_paymentData(data);
    }

    function test_ShouldRevertPaymentDataType2() public {
        bytes memory data = abi.encode(testPackage.getTestPackageType2());
        vm.expectRevert(SafePureFiValidate.MissingPaymentDataError.selector);
        helperFunctions.workaround_paymentData(data);
    }

    function test_ShouldRevertPaymentDataType32() public {
        bytes memory data = abi.encode(testPackage.getTestPackageType32());
        vm.expectRevert(SafePureFiValidate.MissingPaymentDataError.selector);
        helperFunctions.workaround_paymentData(data);
    }

    function test_ShouldRevertPaymentDataType48() public {
        bytes memory data = abi.encode(testPackage.getTestPackageType48());
        vm.expectRevert(SafePureFiValidate.MissingPaymentDataError.selector);
        helperFunctions.workaround_paymentData(data);
    }

    function test_ShouldRevertPaymentDataType128() public {
        bytes memory data = abi.encode(testPackage.getTestPackageType128());
        vm.expectRevert(SafePureFiValidate.MissingPaymentDataError.selector);
        helperFunctions.workaround_paymentData(data);
    }

    function test_ShouldRevertPaymentDataType160() public {
        bytes memory data = abi.encode(testPackage.getTestPackageType160());
        vm.expectRevert(SafePureFiValidate.MissingPaymentDataError.selector);
        helperFunctions.workaround_paymentData(data);
    }


    function test_ShouldRevertPaymentDataType176() public {
        bytes memory data = abi.encode(testPackage.getTestPackageType176());
        vm.expectRevert(SafePureFiValidate.MissingPaymentDataError.selector);
        helperFunctions.workaround_paymentData(data);
    }

    function test_ShouldRevertToken0DataType1() public {
        bytes memory data = abi.encode(testPackage.getTestPackageType1());
        vm.expectRevert(SafePureFiValidate.MissingToken0DataError.selector);
        helperFunctions.workaround_tokenData0(data);
    }

    function test_ShouldRevertToken0DataType2() public {
        bytes memory data = abi.encode(testPackage.getTestPackageType2());
        vm.expectRevert(SafePureFiValidate.MissingToken0DataError.selector);
        helperFunctions.workaround_tokenData0(data);
    }

    function test_ShouldRevertToken0DataType64() public {
        bytes memory data = abi.encode(testPackage.getTestPackageType64());
        vm.expectRevert(SafePureFiValidate.MissingToken0DataError.selector);
        helperFunctions.workaround_tokenData0(data);
    }

    function test_ShouldRevertToken0DataType128() public {
        bytes memory data = abi.encode(testPackage.getTestPackageType128());
        vm.expectRevert(SafePureFiValidate.MissingToken0DataError.selector);
        helperFunctions.workaround_tokenData0(data);
    }

    function test_ShouldRevertToken0DataType192() public {
        bytes memory data = abi.encode(testPackage.getTestPackageType192());
        vm.expectRevert(SafePureFiValidate.MissingToken0DataError.selector);
        helperFunctions.workaround_tokenData0(data);
    }

    function test_ShouldReturnCorrectToken0DataType32() public view {
        (address token, uint256 amount) = helperFunctions.workaround_tokenData0(abi.encode(testPackage.getTestPackageType32()));
        assertEq(helperFunctions.workaround_encodeTokenData(token, testPackage.DECIMALS(), amount), testPackage.TOKEN_DATA_0());
    }

    function test_ShouldReturnCorrectToken0DataType48() public view {
        (address token, uint256 amount) = helperFunctions.workaround_tokenData0(abi.encode(testPackage.getTestPackageType48()));
        assertEq(helperFunctions.workaround_encodeTokenData(token, testPackage.DECIMALS(), amount), testPackage.TOKEN_DATA_0());
    }

    function test_ShouldReturnCorrectToken0DataType96() public view {
        (address token, uint256 amount) = helperFunctions.workaround_tokenData0(abi.encode(testPackage.getTestPackageType96()));
        assertEq(helperFunctions.workaround_encodeTokenData(token, testPackage.DECIMALS(), amount), testPackage.TOKEN_DATA_0());
    }

    function test_ShouldReturnCorrectToken0DataType112() public view {
        (address token, uint256 amount) = helperFunctions.workaround_tokenData0(abi.encode(testPackage.getTestPackageType112()));
        assertEq(helperFunctions.workaround_encodeTokenData(token, testPackage.DECIMALS(), amount), testPackage.TOKEN_DATA_0());
    }

    function test_ShouldReturnCorrectToken0DataType160() public view {
        (address token, uint256 amount) = helperFunctions.workaround_tokenData0(abi.encode(testPackage.getTestPackageType160()));
        assertEq(helperFunctions.workaround_encodeTokenData(token, testPackage.DECIMALS(), amount), testPackage.TOKEN_DATA_0());
    }

    function test_ShouldReturnCorrectToken0DataType176() public view {
        (address token, uint256 amount) = helperFunctions.workaround_tokenData0(abi.encode(testPackage.getTestPackageType176()));
        assertEq(helperFunctions.workaround_encodeTokenData(token, testPackage.DECIMALS(), amount), testPackage.TOKEN_DATA_0());
    }

    function test_ShouldReturnCorrectToken0DataType224() public view {
        (address token, uint256 amount) = helperFunctions.workaround_tokenData0(abi.encode(testPackage.getTestPackageType224()));
        assertEq(helperFunctions.workaround_encodeTokenData(token, testPackage.DECIMALS(), amount), testPackage.TOKEN_DATA_0());
    }

    function test_ShouldReturnCorrectToken0DataType240() public view {
        (address token, uint256 amount) = helperFunctions.workaround_tokenData0(abi.encode(testPackage.getTestPackageType240()));
        assertEq(helperFunctions.workaround_encodeTokenData(token, testPackage.DECIMALS(), amount), testPackage.TOKEN_DATA_0());
    }
    // Token1Data test(success)
    function test_ShouldReturnCorrectToken1DataType48() public view {
        (address token, uint256 amount) = helperFunctions.workaround_tokenData1(abi.encode(testPackage.getTestPackageType48()));
        assertEq(helperFunctions.workaround_encodeTokenData(token, testPackage.DECIMALS(), amount), testPackage.TOKEN_DATA_1());
    }

    function test_ShouldReturnCorrectToken1DataType112() public view {
        (address token, uint256 amount) = helperFunctions.workaround_tokenData1(abi.encode(testPackage.getTestPackageType112()));
        assertEq(helperFunctions.workaround_encodeTokenData(token, testPackage.DECIMALS(), amount), testPackage.TOKEN_DATA_1());
    }

    function test_ShouldReturnCorrectToken1DataType176() public view {
        (address token, uint256 amount) = helperFunctions.workaround_tokenData1(abi.encode(testPackage.getTestPackageType176()));
        assertEq(helperFunctions.workaround_encodeTokenData(token, testPackage.DECIMALS(), amount), testPackage.TOKEN_DATA_1());
    }

    function test_ShouldReturnCorrectToken1DataType240() public view {
        (address token, uint256 amount) = helperFunctions.workaround_tokenData1(abi.encode(testPackage.getTestPackageType240()));
        assertEq(helperFunctions.workaround_encodeTokenData(token, testPackage.DECIMALS(), amount), testPackage.TOKEN_DATA_1());
    }

    // Token1Data test(revert)
    function test_ShouldRevertToken1DataType1() public {
        bytes memory data = abi.encode(testPackage.getTestPackageType1());
        vm.expectRevert(SafePureFiValidate.MissingToken1DataError.selector);
        helperFunctions.workaround_tokenData1(data);
    }

    function test_ShouldRevertToken1DataType2() public {
        bytes memory data = abi.encode(testPackage.getTestPackageType2());
        vm.expectRevert(SafePureFiValidate.MissingToken1DataError.selector);
        helperFunctions.workaround_tokenData1(data);
    }

    function test_ShouldRevertToken1DataType64() public {
        bytes memory data = abi.encode(testPackage.getTestPackageType64());
        vm.expectRevert(SafePureFiValidate.MissingToken1DataError.selector);
        helperFunctions.workaround_tokenData1(data);
    }

    function test_ShouldRevertToken1DataType128() public {
        bytes memory data = abi.encode(testPackage.getTestPackageType128());
        vm.expectRevert(SafePureFiValidate.MissingToken1DataError.selector);
        helperFunctions.workaround_tokenData1(data);
    }

    function test_ShouldRevertToken1DataType192() public {
        bytes memory data = abi.encode(testPackage.getTestPackageType192());
        vm.expectRevert(SafePureFiValidate.MissingToken1DataError.selector);
        helperFunctions.workaround_tokenData1(data);
    }


    function test_ShouldRevertToken1DataType32() public {
        bytes memory data = abi.encode(testPackage.getTestPackageType32());
        vm.expectRevert(SafePureFiValidate.MissingToken1DataError.selector);
        helperFunctions.workaround_tokenData1(data);
    }

    function test_ShouldRevertToken1DataType96() public {
        bytes memory data = abi.encode(testPackage.getTestPackageType96());
        vm.expectRevert(SafePureFiValidate.MissingToken1DataError.selector);
        helperFunctions.workaround_tokenData1(data);
    }

    function test_ShouldRevertToken1DataType224() public {
        bytes memory data = abi.encode(testPackage.getTestPackageType224());
        vm.expectRevert(SafePureFiValidate.MissingToken1DataError.selector);
        helperFunctions.workaround_tokenData1(data);
    }

    // Token0 PackageType2 (success)
    function test_ShouldReturnCorrectToken0() public view {
        assertEq(helperFunctions.workaround_token0(abi.encode(testPackage.getTestPackageType2())), testPackage.TOKEN_0());
    }

    function test_ShouldReturnCorrectToken0Amount() public view {
        assertEq(helperFunctions.workaround_token0Amount(abi.encode(testPackage.getTestPackageType2())), testPackage.TOKEN_0_AMOUNT());
    }

    // Token0 PackageType2 (success)
    function test_ShouldRevertToken0Type32() public {
        bytes memory data = abi.encode(testPackage.getTestPackageType32());
        vm.expectRevert(SafePureFiValidate.ExpectedSecondPackageTypeError.selector);
        address token = helperFunctions.workaround_token0(data);
    }

    function test_ShouldRevertToken0AmountType32() public {
        bytes memory data = abi.encode(testPackage.getTestPackageType32());
        vm.expectRevert(SafePureFiValidate.ExpectedSecondPackageTypeError.selector);
        uint256 amount = helperFunctions.workaround_token0Amount(data);
    }

}